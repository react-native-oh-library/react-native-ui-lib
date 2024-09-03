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

interface KeyboardTrackingViewTempProps extends ViewRawProps {
  text?: string
}
interface AutoLayoutProps {}
type KeyboardTrackingViewTempDescriptor = Descriptor<"KeyboardTrackingViewTemp", ViewBaseProps, AutoLayoutProps, KeyboardTrackingViewTempProps>

@Component
export struct KeyboardTrackingViewTemp {
  public static readonly NAME = RNC.KeyboardTrackingViewTempArkTS.NAME
  public ctx!: RNComponentContext
  public tag: number = 0
  private logger!: RNOHLogger;

  @State descriptor: KeyboardTrackingViewTempDescriptor = {} as KeyboardTrackingViewTempDescriptor
  private eventEmitter: RNC.KeyboardTrackingViewTempArkTS.EventEmitter | undefined = undefined
  private cleanUpCallbacks: (() => void)[] = []

  aboutToAppear() {
    // 初始化logger
    this.logger = this.ctx.logger.clone('KeyboardTrackingViewTemp');
    this.eventEmitter = new RNC.KeyboardTrackingViewTempArkTS.EventEmitter(this.ctx.rnInstance, this.tag)
    this.descriptor = this.ctx.descriptorRegistry.getDescriptor<KeyboardTrackingViewTempDescriptor>(this.tag)
    this.cleanUpCallbacks.push(this.ctx.descriptorRegistry.subscribeToDescriptorChanges(this.tag,
      (newDescriptor) => {
        this.descriptor = (newDescriptor as KeyboardTrackingViewTempDescriptor)
      }
    ))
  }

  build() {
    RNViewBase({ ctx: this.ctx, tag: this.tag }) {
      Column() {
        Text("Hello word").width("100%").fontSize(18)
        TextInput().width("100%").height(30)
      }.width("100%").height("100%").backgroundColor("#ffff00")

      this.ctx.wrappedRNChildrenBuilder.builder(this.ctx, this.tag)
    }
  }
}
