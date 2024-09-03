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

#pragma once

#include "RNOH/Color.h"
#include "RNOH/arkui/StackNode.h"
#include "RNOH/generated/components/BaseKeyboardTrackingViewTempComponentInstance.h"
#include "RNOH/CppComponentInstance.h"
#include "RNOH/arkui/CustomNode.h"
#include "RNOH/ArkTSMessageHub.h"

namespace rnoh {
class KeyboardTrackingViewTempComponentInstance
    : public BaseKeyboardTrackingViewTempComponentInstance,
    ArkTSMessageHub::Observer {
  using Super = BaseKeyboardTrackingViewTempComponentInstance;

  StackNode m_stackNode{};
  CustomNode m_customNode{};
    
  public:
  KeyboardTrackingViewTempComponentInstance(Context context)
      : Super(std::move(context)), ArkTSMessageHub::Observer(m_deps->arkTSMessageHub) {
        m_stackNode.insertChild(m_customNode, 0);
        this->subscribeListeners();
  }

  ArkUINode& getLocalRootArkUINode() {
    return m_stackNode;
  };
    
  void onChildInserted(
    ComponentInstance::Shared const& childComponentInstance,
    std::size_t index) {
    CppComponentInstance::onChildInserted(childComponentInstance, index);
    m_stackNode.insertChild(
      childComponentInstance->getLocalRootArkUINode(), index + 1);
  }
    
  void onChildRemoved(
    ComponentInstance::Shared const& childComponentInstance,
    std::size_t index) {
    CppComponentInstance::onChildRemoved(childComponentInstance);
  }

  void onPropsChanged(SharedConcreteProps const& props) {
        
  };
    
  void onLayoutChanged(facebook::react::LayoutMetrics const &layoutMetrics) {
    CppComponentInstance::onLayoutChanged(layoutMetrics);
  }
    
  void subscribeListeners() {
    callTurboModuleSync("subscribeListeners", {});
  }
    
  void unregisterListeners(facebook::react::LayoutMetrics const &layoutMetrics) {
    callTurboModuleSync("unregisterListeners", {});
  }
    
  void callTurboModuleSync(const std::string &methodName, const std::vector<ArkJS::IntermediaryArg> params) {
    auto rnInstancePtr = this->m_deps->rnInstance.lock();
    if (rnInstancePtr != nullptr) {
        auto turboModule = rnInstancePtr->getTurboModule("KeyboardTrackingViewTempTurboModule");
    } else {
        DLOG(ERROR) << "rnInstancePtr is null";
    }
  }
    
  void onMessageReceived(ArkTSMessage const &message) {
    if (message.payload.isNull()) {
        DLOG(ERROR) << "payload is null";
        return;
    }
    if (message.name == "Keyboard-Height-Show") {
        auto mKeyboardHeight = message.payload.asDouble() - 10;
        if (m_stackNode.getArkUINodeHandle() != nullptr) {
            m_stackNode.setOffset(0, -mKeyboardHeight);
        }
    } else if (message.name == "Keyboard-Height-Hide") {
        auto mKeyboardHeight = message.payload.asDouble();
        if (m_stackNode.getArkUINodeHandle() != nullptr) {
            m_stackNode.setOffset(0, 0);
        }
    }
  }

};

} // namespace rnoh