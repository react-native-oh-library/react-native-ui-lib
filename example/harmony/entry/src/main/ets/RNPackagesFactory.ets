/*
 * Copyright (c) 2024 Huawei Device Co., Ltd. All rights reserved
 * Use of this source code is governed by a MIT license that can be
 * found in the LICENSE file.
 */


import type {RNPackageContext, RNPackage} from '@rnoh/react-native-openharmony/ts';
import { UiLibPackage } from '@react-native-ohos/react-native-ui-lib/ts';
import { ReanimatedPackage } from '@react-native-ohos/react-native-reanimated/ts';
import GestureHandlerPackage from '@react-native-ohos/react-native-gesture-handler';
import { SvgPackage } from '@react-native-ohos/react-native-svg/ts';
export function createRNPackages(ctx: RNPackageContext): RNPackage[] {
  return [
    new UiLibPackage(ctx),
    new ReanimatedPackage(ctx),
    new GestureHandlerPackage(ctx),
    new SvgPackage(ctx),
  ];
}
