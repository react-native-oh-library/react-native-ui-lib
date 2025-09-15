/*
 * Copyright (c) 2025 Huawei Device Co., Ltd. All rights reserved
 * Use of this source code is governed by a MIT license that can be
 * found in the LICENSE file.
 */

import React, {Component} from 'react';
import {Colors, Typography, Spacings, ThemeManager, View, Text, Card, Button} from 'react-native-ui-lib';

Colors.loadColors({
  primaryColor: '#2364AA',
  secondaryColor: '#81C3D7',
  textColor: '##221D23',
  errorColor: '#E63B2E',
  successColor: '#ADC76F',
  warnColor: '##FF963C'
});

Typography.loadTypographies({
  heading: {fontSize: 36, fontWeight: '600'},
  subheading: {fontSize: 28, fontWeight: '500'},
  body: {fontSize: 18, fontWeight: '400'}
});

Spacings.loadSpacings({
  page: 20,
  card: 12,
  gridGutter: 16
});

// with plain object
ThemeManager.setComponentTheme('Card', {
  borderRadius: 8
});

// with a dynamic function
ThemeManager.setComponentTheme('Button', (props, context) => {
  // 'square' is not an original Button prop, but a custom prop that can
  // be used to create different variations of buttons in your app
  if (props.square) {
    return {
      borderRadius: 0
    };
  }
});

class MyScreen extends Component {
  render() {
    return (
      <View flex padding-page>
        <Text heading marginB-s4>
          My Screen
        </Text>
        <Card height={100} center padding-card marginB-s4>
          <Text body>This is an example card </Text>
        </Card>

        <Button label="Button" body bg-primaryColor square></Button>
      </View>
    );
  }
}

//export default App
export default MyScreen;