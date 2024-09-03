/**
 * MIT License
 *
 * Copyright (C) 2024 Huawei Device Co., Ltd.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

import { highlightFrameType, minimumRectSizeType } from './HightlighterView';

interface IOptions {
  overlayColor?: string;
  borderRadius?: number;
  strokeColor?: string;
  strokeWidth?: number;
  innerPadding?: number;
  highlightFrame?: highlightFrameType;
  minimumRectSize?: minimumRectSizeType;
}

class Highlighter {
  constructor(context2D: CanvasRenderingContext2D, options: IOptions) {
    this.context2D = context2D;
  }
  context2D: CanvasRenderingContext2D;
  overlayColor = '';
  borderRadius = 0;
  strokeColor = '';
  strokeWidth = 0;
  innerPadding = 0;
  highlightFrame: highlightFrameType = {x: 17, y: 287, width: 40, height: 40};
  minimumRectSize: minimumRectSizeType = {width: 0, height: 0}

  init(options: IOptions = {}) {
    this.overlayColor = options.overlayColor || this.overlayColor;
    this.borderRadius = options.borderRadius || this.borderRadius;
    this.strokeColor = options.strokeColor || this.strokeColor;
    this.strokeWidth = options.strokeWidth || this.strokeWidth;
    this.innerPadding = options.innerPadding || this.innerPadding;
    if(options.highlightFrame?.x) {
      this.highlightFrame = options.highlightFrame || this.highlightFrame;
    }
    if(options.minimumRectSize?.width) {
      this.minimumRectSize = options.minimumRectSize || this.minimumRectSize;
    }
    this.draw();
  }

  // 圆角矩形绘制函数
  private roundRect(ctx: CanvasRenderingContext2D, x: number, y: number, width: number, height: number, radius: number, flag: boolean = false) {
    if(this.innerPadding) {
      width = width + (this.innerPadding * 2);
      height = height + (this.innerPadding * 2);
      x = x - this.innerPadding;
      y = y - this.innerPadding;
    }
    if(this.minimumRectSize.width || this.minimumRectSize.height){
      if(width < this.minimumRectSize.width) {
        x = x - ((this.minimumRectSize.width - width) / 2);
        width = this.minimumRectSize.width;
      }
      if(height < this.minimumRectSize.height) {
        y = y - ((this.minimumRectSize.height - height) / 2);
        height = this.minimumRectSize.height;
      }
    }
    if(flag) {
      ctx.lineWidth = this.strokeWidth;
    }
    ctx.beginPath();
    ctx.moveTo(x + radius, y);
    ctx.lineTo(x + width - radius, y);
    ctx.arcTo(x + width, y, x + width, y + radius, radius);
    ctx.lineTo(x + width, y + height - radius);
    ctx.arcTo(x + width, y + height, x + width - radius, y + height, radius);
    ctx.lineTo(x + radius, y + height);
    ctx.arcTo(x, y + height, x, y + height - radius, radius);
    ctx.lineTo(x, y + radius);
    ctx.arcTo(x, y, x + radius, y, radius);
    ctx.closePath();
    if(flag) {
      ctx.strokeStyle = this.strokeColor;
      ctx.stroke()
    } else {
      ctx.fill();
    }
  }

  reset() {
    this.context2D.clearRect(0, 0, this.context2D.width, this.context2D.height);
  }

  draw() {
    if (!this.highlightFrame) return
    //绘制半透明背景 #F5DC62
    this.context2D.globalCompositeOperation = 'source-over';
    this.context2D.fillStyle = this.overlayColor;
    this.context2D.fillRect(0, 0, this.context2D.width, this.context2D.height);
    // 绘制边框
    if(this.strokeWidth && this.strokeColor) {
      this.roundRect(this.context2D, this.highlightFrame.x, this.highlightFrame.y, this.highlightFrame.width, this.highlightFrame.height, this.borderRadius, true);
    }
    //   绘制镂空 2
    this.context2D.globalCompositeOperation = 'destination-out';
    this.context2D.fillStyle = 'rgb(0,0,255)'
    this.roundRect(this.context2D, this.highlightFrame.x, this.highlightFrame.y, this.highlightFrame.width, this.highlightFrame.height, this.borderRadius, false);
  }
}

export default Highlighter