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

import { Descriptor, RNComponentContext, RNOHLogger, RNViewBase, ViewRawProps, ViewBaseProps } from '@rnoh/react-native-openharmony';
import { RNC } from "@rnoh/react-native-openharmony/generated"
import Highlighter from './Highlighter';


export interface highlightFrameType {
  x: number;
  y: number;
  width: number;
  height: number;
}
export interface minimumRectSizeType {
  width: number;
  height: number
}
interface HighlighterViewProps extends ViewRawProps {
  highlightFrame?: highlightFrameType;
  overlayColor: string;
  borderRadius?: number;
  strokeColor: string;
  strokeWidth: number;
  highlightViewTag?: number;
  minimumRectSize: minimumRectSizeType;
  innerPadding: number;
}
export interface AutoLayoutProps {}
export type HighlighterViewDescriptor = Descriptor<"HighlighterView", ViewBaseProps, AutoLayoutProps, HighlighterViewProps>

@Component
export struct HighlighterView {
  public static readonly NAME = RNC.HighlighterView.NAME
  public ctx!: RNComponentContext
  public tag: number = 0
  private logger!: RNOHLogger;
  //用来配置CanvasRenderingContext2D对象的参数，包括是否开启抗锯齿，true表明开启抗锯齿。
  private settings: RenderingContextSettings = new RenderingContextSettings(true)
  //用来创建CanvasRenderingContext2D对象，通过在canvas中调用CanvasRenderingContext2D对象来绘制。
  private context2D: CanvasRenderingContext2D = new CanvasRenderingContext2D(this.settings)
  sign = new Highlighter(this.context2D, {});
  @State descriptor: HighlighterViewDescriptor = {} as HighlighterViewDescriptor
  private eventEmitter: RNC.HighlighterView.EventEmitter | undefined = undefined
  private cleanUpCallbacks: (() => void)[] = []

  aboutToAppear() {
    // 初始化logger
    this.logger = this.ctx.logger.clone('HighlighterView');
    this.eventEmitter = new RNC.HighlighterView.EventEmitter(this.ctx.rnInstance, this.tag)
    this.descriptor = this.ctx.descriptorRegistry.getDescriptor<HighlighterViewDescriptor>(this.tag)
    this.cleanUpCallbacks.push(this.ctx.descriptorRegistry.subscribeToDescriptorChanges(this.tag,
      (newDescriptor) => {
        this.descriptor = (newDescriptor as HighlighterViewDescriptor)
        this.reset();
        this.setProps();
      }
    ))
  }

  private setProps() {
    this.setHighlightFrame();
    this.setOverlayColor();
    this.setBorderRadius();
    this.setStrokeColor();
    this.setStrokeWidth();
    this.setMinimumRectSize();
    this.setInnerPadding();
    this.sign.draw();
  }

  private setHighlightFrame() {
    this.sign.highlightFrame = this.descriptor.rawProps.highlightFrame as highlightFrameType;
  }

  private setOverlayColor() {
    this.sign.overlayColor = this.descriptor.rawProps.overlayColor;
  }

  private setBorderRadius() {
    this.sign.borderRadius = this.descriptor.rawProps.borderRadius || 0;
  }

  private setStrokeColor() {
    this.sign.strokeColor = this.descriptor.rawProps.strokeColor;
  }

  private setStrokeWidth() {
    this.sign.strokeWidth = this.descriptor.rawProps.strokeWidth;
  }

  private setMinimumRectSize() {
    this.sign.minimumRectSize = this.descriptor.rawProps.minimumRectSize;
  }

  private setInnerPadding() {
    this.sign.innerPadding = this.descriptor.rawProps.innerPadding;
  }

  // 重置画布
  public reset() {
    this.sign.reset();
  }

  aboutToDisappear() {
    this.cleanUpCallbacks.forEach(cb => cb())
  }

  public canvasReady() {
    this.logger.info('canvas ready');
    this.sign.init();
  }

  build() {
    RNViewBase({ ctx: this.ctx, tag: this.tag }) {
      Canvas(this.context2D)
        .width("100%")
        .height("100%")
        .backgroundColor('transparent')
        .onReady(() => {
          this.canvasReady()
        })

      this.ctx.wrappedRNChildrenBuilder.builder(this.ctx, this.tag)
    }
  }
}
