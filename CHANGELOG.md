# Changelog
## 鸿蒙化Log

### v7.43.1-rc.1

- pre-release version 7.43.1-rc.1


* feat: add OpenHarmony support for react-native-ui-lib

## ReleaseLog

### 7.43.0

New:
• Docs - Release new docs content and structure. ([#3730](https://github.com/wix/react-native-ui-lib/pull/3730))

Infra:
• Docs - fix playground preview divider ([#3728](https://github.com/wix/react-native-ui-lib/pull/3728))
• Docs - remove double header for colors page ([#3732](https://github.com/wix/react-native-ui-lib/pull/3732))
• Docs - button api update ([#3731](https://github.com/wix/react-native-ui-lib/pull/3731))
• Docs - updated links font size ([#3742](https://github.com/wix/react-native-ui-lib/pull/3742))

### 7.42.0

What’s New?

Fixes

• Picker - fix crash for children not in array ([#3716](https://github.com/wix/react-native-ui-lib/pull/3716))
• Picker merging default modal props with the user custom modal props. ([#3719](https://github.com/wix/react-native-ui-lib/pull/3719))
• KeyboardAccessoryView - fix "Argument appears to not be a ReactComponent" ([#3710](https://github.com/wix/react-native-ui-lib/pull/3710))

Maintenance & Infra

• Chip Driver, and basic Chip test. ([#3717](https://github.com/wix/react-native-ui-lib/pull/3717))
• TimeLine `testID` prop. ([#3706](https://github.com/wix/react-native-ui-lib/pull/3706))
• Picker - test items exists ([#3724](https://github.com/wix/react-native-ui-lib/pull/3724))

OTHERS

• Docs - Added category introductory page. ([#3715](https://github.com/wix/react-native-ui-lib/pull/3715))
• Docs - added composite to build script ([#3709](https://github.com/wix/react-native-ui-lib/pull/3709))
• Docs - Refactor UILivePreview component to support code format ([#3722](https://github.com/wix/react-native-ui-lib/pull/3722))
• Docs - Fix the Prettify button import error ([#3726](https://github.com/wix/react-native-ui-lib/pull/3726))
• Docs - Colors Token in colors table now copies token when clicking ([#3727](https://github.com/wix/react-native-ui-lib/pull/3727))

### 7.41.0

What’s New?

Features

• Drawer - item support custom text and icon colors ([#3691](https://github.com/wix/react-native-ui-lib/pull/3691))
• Timeline - Point support custom `labelColor` prop ([#3692](https://github.com/wix/react-native-ui-lib/pull/3692))

 Fixes

• TabController - fix RTL in Android ([#3688](https://github.com/wix/react-native-ui-lib/pull/3688))
• Picker - useWheelPicker fix accessibility ([#3696](https://github.com/wix/react-native-ui-lib/pull/3696))

Maintenance & Infra

• Timeline - `useThemeProps` support usage of config file ([#3695](https://github.com/wix/react-native-ui-lib/pull/3695))
• Exported Incubator.SliderProps [#3699](https://github.com/wix/react-native-ui-lib/pull/3699)

OTHERS

• Docs - example fixes ([#3687](https://github.com/wix/react-native-ui-lib/pull/3687))
• Docs - Component props `note` section style ([#3701](https://github.com/wix/react-native-ui-lib/pull/3701))
• Docs - fix Switch page ([#3705](https://github.com/wix/react-native-ui-lib/pull/3705))
• Docs - Figma embed removed footer ([#3703](https://github.com/wix/react-native-ui-lib/pull/3703))
• Docs - Added figma embed links for missing pages ([#3698](https://github.com/wix/react-native-ui-lib/pull/3698))
• Docs - Aligned sidebars script with latest version sidebar ([#3690](https://github.com/wix/react-native-ui-lib/pull/3690))

### 7.40.0

Features

• Constants - Added getFontScale. ([#3597](https://github.com/wix/react-native-ui-lib/pull/3597))
• Avatar add `ellipsizeMode` prop for text truncation and improve accessibility handeling. ([#3542](https://github.com/wix/react-native-ui-lib/pull/3542))
• Picker new `selectionStatus` feature, support "Select All" element. ([#3557](https://github.com/wix/react-native-ui-lib/pull/3557))
• Icon `size` prop support object with `width, height`. ([#3660](https://github.com/wix/react-native-ui-lib/pull/3660))

🔧 Fixes

• Checkbox - Fixed validate function not returning validity ([#3672](https://github.com/wix/react-native-ui-lib/pull/3672))
• useScrollTo - Fixed Android RTL flipped offset caculcation. ([#3644](https://github.com/wix/react-native-ui-lib/pull/3644))
• Checkbox - fix accessibility ([#3650](https://github.com/wix/react-native-ui-lib/pull/3650))
• Make the image component have type annotations again instead of any ([#3656](https://github.com/wix/react-native-ui-lib/pull/3656))
• Refactor Button component to determine filled state by background color ([#3670](https://github.com/wix/react-native-ui-lib/pull/3670))
• TextField - handle value change to undefined ([#3676](https://github.com/wix/react-native-ui-lib/pull/3676))
• Fix missing ellipsis when text is overflowing in TextField ([#3682](https://github.com/wix/react-native-ui-lib/pull/3682))

⚙️ Maintenance & Infra

• Assets new `internal` path, moved local components assets to be under `Assets.internal.icons`. ([#3618](https://github.com/wix/react-native-ui-lib/pull/3618))
• Local Assets new structure, support web and mobile devices. ([#3635](https://github.com/wix/react-native-ui-lib/pull/3635))
• Internal components - move display name to 'ignore' ([#3641](https://github.com/wix/react-native-ui-lib/pull/3641))
• Assets web structure refactor. ([#3652](https://github.com/wix/react-native-ui-lib/pull/3652))
• Upgrade flashlist to version 1.7.6 in our demo app ([#3675](https://github.com/wix/react-native-ui-lib/pull/3675))
• Upgrade Reanimated to version 3.16.7 in our demo app ([#3679](https://github.com/wix/react-native-ui-lib/pull/3679))
• Docs - Timeline - fix live components ([#3611](https://github.com/wix/react-native-ui-lib/pull/3611))
• New componentUtils file to include common logic. ([#3609](https://github.com/wix/react-native-ui-lib/pull/3609))
• Docs - LiveCode in table cell - block interaction ([#3610](https://github.com/wix/react-native-ui-lib/pull/3610))
• Docs site redesign ([#3636](https://github.com/wix/react-native-ui-lib/pull/3636))
• Docs site redesign fixes ([#3640](https://github.com/wix/react-native-ui-lib/pull/3640))
• Docs - fix deploy ([#3645](https://github.com/wix/react-native-ui-lib/pull/3645))
• Docs - Change favicon and add logo ([#3651](https://github.com/wix/react-native-ui-lib/pull/3651))
• LivePreview - fix UI ([#3667](https://github.com/wix/react-native-ui-lib/pull/3667))

### 7.39.0

**Important**

This release we've made an effort to improve the accessibility of our components during which we've made changes to accessibility labels, properties and hit slops.
**Main change:** All touchable components hit target was changed in order to hit a 48 by 48 hit target

What’s New?

• Picker - Selection control bar and toggle all items functionality. ([#3557](https://github.com/wix/react-native-ui-lib/pull/3557))

Fixes

• Button - Fixed hit target to be at least of 48x48. ([#3522](https://github.com/wix/react-native-ui-lib/pull/3522))
• Stepper - Fixed hit target to be at least of 48x48. ([#3522](https://github.com/wix/react-native-ui-lib/pull/3522))
• Button - Fixed button no receiving passed hit slop ([#3547](https://github.com/wix/react-native-ui-lib/pull/3547))
• Fix Hint's targetFrame position ([#3541](https://github.com/wix/react-native-ui-lib/pull/3541))
• Fix Badge should be pimple size when label undefined ([#3545](https://github.com/wix/react-native-ui-lib/pull/3545))
• Avatar with animated not supported on web. ([#3554](https://github.com/wix/react-native-ui-lib/pull/3554))
• Currency - fix - missing CLDR for SLE ([#3576](https://github.com/wix/react-native-ui-lib/pull/3576))
• Checkbox & RadioButton: Added hitSlop to ensure minimum 48x48 touch target ([#3518](https://github.com/wix/react-native-ui-lib/pull/3518))

Maintenance & Infra

• Forbid using console.error ([#3532](https://github.com/wix/react-native-ui-lib/pull/3532))

### 7.38.0

Fixes

• ExpandableOverlay - Fix accessibility focus when overlay closes. ([#3503](https://github.com/wix/react-native-ui-lib/pull/3503))
• TextField - Hit target increased ([#3504](https://github.com/wix/react-native-ui-lib/pull/3504))
• Picker - Fixes incorrect offset after search. ([#3493](https://github.com/wix/react-native-ui-lib/pull/3493))
• FloatingButton - Fixed not pressable when wrapped with Keyboard.KeyboardTrackingView. ([#3496](https://github.com/wix/react-native-ui-lib/pull/3496))
• Switch - fix accessibility ([#3511](https://github.com/wix/react-native-ui-lib/pull/3511))
• Incubator.Toast - fix voice over ([#3509](https://github.com/wix/react-native-ui-lib/pull/3509))
• ColorSwatch - fix accessibility ([#3510](https://github.com/wix/react-native-ui-lib/pull/3510))
• TabBar - Added better accessibility roles. ([#3501](https://github.com/wix/react-native-ui-lib/pull/3501))
• Refactor and fix Hint component edge case position issues ([#3486](https://github.com/wix/react-native-ui-lib/pull/3486))
• Switch: Added default 48x48 touch target with support for custom hitSlop overrides ([#3517](https://github.com/wix/react-native-ui-lib/pull/3517))
• Avatar: ensure minimum 48x48 hit target for better accessibility ([#3521](https://github.com/wix/react-native-ui-lib/pull/3521))

Maintenance & Infra

• Support flatten style in View driver ([#3502](https://github.com/wix/react-native-ui-lib/pull/3502))
• Fix build on real device ([#3507](https://github.com/wix/react-native-ui-lib/pull/3507))
• Android - fix entry point after change demo to index ([#3512](https://github.com/wix/react-native-ui-lib/pull/3512))
• BlurView - Updated dependency to version 4.4.1 ([#3498](https://github.com/wix/react-native-ui-lib/pull/3498))

### 7.37.0

Fixes

• Picker - Fixes incorrect offset after search. ([#3493](https://github.com/wix/react-native-ui-lib/pull/3493))
• FloatingButton - Fixed not pressable when wrapped with Keyboard.KeyboardTrackingView. ([#3496](https://github.com/wix/react-native-ui-lib/pull/3496))

Maintenance & Infra

• BlurView - Updated dependency to version 4.4.1 ([#3498](https://github.com/wix/react-native-ui-lib/pull/3498))
• Refactor and fix Hint component edge case position issues ([#3486](https://github.com/wix/react-native-ui-lib/pull/3486))

### 7.36.0

What’s New?

- New component - PieChart by [@nitzanyiz](https://github.com/nitzanyiz) in [#3470](https://github.com/wix/react-native-ui-lib/pull/3470)

Features

- Picker - custom top element by [@adids1221](https://github.com/adids1221) in [#3465](https://github.com/wix/react-native-ui-lib/pull/3465)

Fixes

- TextField - ClearButton - fix right margin by [@M-i-k-e-l](https://github.com/M-i-k-e-l) in [#3482](https://github.com/wix/react-native-ui-lib/pull/3482)
- Button - update ButtonProps to use IconProps for iconProps type by [@nitzanyiz](https://github.com/nitzanyiz) in [#3483](https://github.com/wix/react-native-ui-lib/pull/3483)

Maintenance & Infra

- uilib-native - fix react version by [@M-i-k-e-l](https://github.com/M-i-k-e-l) in [#3487](https://github.com/wix/react-native-ui-lib/pull/3487)
- Update uilib-native version to 4.5.1 by [@M-i-k-e-l](https://github.com/M-i-k-e-l) in [#3489](https://github.com/wix/react-native-ui-lib/pull/3489)

### 7.35.0

Features

• Add useDebounce hook ([#3365](https://github.com/wix/react-native-ui-lib/pull/3365))
• TextField - add timeoutOnChange to allow debouncing of error handling ([#3365](https://github.com/wix/react-native-ui-lib/pull/3365))
• Add textColor and backgroundColor props to DateTimePicker component ([#3481](https://github.com/wix/react-native-ui-lib/pull/3481))

Fixes

• TabBarItem - onPress taken from props at the beginning. ([#3389](https://github.com/wix/react-native-ui-lib/pull/3389))
• Added support for `react-native-svg` 14 and higher. ([#3394](https://github.com/wix/react-native-ui-lib/pull/3394))
• SegmentedControl - Added export of presets enum. ([#3415](https://github.com/wix/react-native-ui-lib/pull/3415))
• `TabController` support RTL on IOS and Android. ([#3456](https://github.com/wix/react-native-ui-lib/pull/3456))
• ColorPicker - reduce lag with Incubator.Slider ([#3468](https://github.com/wix/react-native-ui-lib/pull/3468))

⚙️ Maintenance & Infra

• Infra/update docusaurus 3.6.1 ([#3377](https://github.com/wix/react-native-ui-lib/pull/3377))
• Constants.ts - Fixed StatusBarManager being undefined with new RN architecture. ([#3425](https://github.com/wix/react-native-ui-lib/pull/3425))
• Separate uilib-native ([#3395](https://github.com/wix/react-native-ui-lib/pull/3395))
• Update uilib-native version ([#3480](https://github.com/wix/react-native-ui-lib/pull/3480))
• Bump rexml from 3.3.6 to 3.3.9 ([#3325](https://github.com/wix/react-native-ui-lib/pull/3325))
• Bump cross-spawn from 6.0.5 to 6.0.6 ([#3432](https://github.com/wix/react-native-ui-lib/pull/3432))

### 7.34.0

What’s New?
• Upgrade support to React Native 0.73 ([#3264](https://github.com/wix/react-native-ui-lib/pull/3264))

Maintenance & Infra
• Docs playground (`live-code`) device wrapper to simulate `Mobile` device. ([#3351](https://github.com/wix/react-native-ui-lib/pull/3351))
• Adjust ratio in docs section between header and content ([#3353](https://github.com/wix/react-native-ui-lib/pull/3353))
• TabController support RTL on IOS and Android ([#3456](https://github.com/wix/react-native-ui-lib/pull/3456))

### 7.33.0

Features

• Add `Colors.getColor` API for getting a color in a specific schemeType regardless to current scheme. usage: `Colors.getColor('$backgroundPrimaryHeavy', 'light')` ([#3294](https://github.com/wix/react-native-ui-lib/pull/3294))

Fixes

• Fix sortable list components flexMigration ([#3308](https://github.com/wix/react-native-ui-lib/pull/3308))
• Move from npmignore to files in order to fix the native components packaging ([#3319](https://github.com/wix/react-native-ui-lib/pull/3319))
• Incubator package - fix typings ([#3318](https://github.com/wix/react-native-ui-lib/pull/3318))
• Picker - Fix dialog UI when passing useDialog ([#3331](https://github.com/wix/react-native-ui-lib/pull/3331))
• Avatar - Fix infinite animation caused by AnimatedImage ([#3332](https://github.com/wix/react-native-ui-lib/pull/3332))
• SortableGridList - single source of truth for itemWidth and itemSpacing ([#3275](https://github.com/wix/react-native-ui-lib/pull/3275))

Maintenance & Infra

• Button driver - add getStyle ([#3296](https://github.com/wix/react-native-ui-lib/pull/3296))
• Functional component `defaultProps` migrate to `parameter props`. ([#3311](https://github.com/wix/react-native-ui-lib/pull/3311))
• Docs - Colors page reformat. ([#3307](https://github.com/wix/react-native-ui-lib/pull/3307))
• `ColorPicker.Dialog` exporting `ColorPickerDialog`. ([#3324](https://github.com/wix/react-native-ui-lib/pull/3324))
• Docs infra improvements ([#3330](https://github.com/wix/react-native-ui-lib/pull/3330))
• Fix TextField usage in Usage.md page ([#3328](https://github.com/wix/react-native-ui-lib/pull/3328))

### 7.32.0

Features

• Support special innerFlexBehavior prop to resolve flex issues with leading/trailing accessory ([#3271](https://github.com/wix/react-native-ui-lib/pull/3271))

Fixes

• SortableGridList - fix number of columns in some iPads ([#3274](https://github.com/wix/react-native-ui-lib/pull/3274))

Maintenance & Infra

• Docusaurus - upgrade to version 3.x ([#3251](https://github.com/wix/react-native-ui-lib/pull/3251))
• MaskedInput - add migration message ([#3267](https://github.com/wix/react-native-ui-lib/pull/3267))
• Demo app - add recent screens chips for easy access ([#3261](https://github.com/wix/react-native-ui-lib/pull/3261))

### 7.31.0

What’s New?

Features

• Picker driver - add exists ([#3243](https://github.com/wix/react-native-ui-lib/pull/3243))
• Picker - new `showLoader` prop while loading/fetching data ([#3234](https://github.com/wix/react-native-ui-lib/pull/3234))
• Stepper - Add new `floating` type ([#3247](https://github.com/wix/react-native-ui-lib/pull/3247))
• SortableListItem - allow overriding `backgroundColor` ([#3255](https://github.com/wix/react-native-ui-lib/pull/3255))

Fixes

• DateTimePicker - `onChange` fixes - only calls onChange when value really changes ([#3227](https://github.com/wix/react-native-ui-lib/pull/3227))
• ColorSwatch - fix `borderRadius` when rendering transparent ([#3260](https://github.com/wix/react-native-ui-lib/pull/3260))
• Fix statusBarHeight value to by dynamic when changing orientation ([#3257](https://github.com/wix/react-native-ui-lib/pull/3257))

Maintenance & Infra

• ESLint - Added require capture to the no-direct-import rule and custom message functionality ([#3220](https://github.com/wix/react-native-ui-lib/pull/3220))
• uilib-native - add .npmignore ([#3245](https://github.com/wix/react-native-ui-lib/pull/3245))
• Fix text field standalone package that leads to old TextFieldMigrator ([#3250](https://github.com/wix/react-native-ui-lib/pull/3250))
• GestureHandlerRoot - wrap components instead of screens ([#3244](https://github.com/wix/react-native-ui-lib/pull/3244))
• Add SEO tags and upgrade to Docusaurus 2.3 ([#3249](https://github.com/wix/react-native-ui-lib/pull/3249))
• Add a quick message for our users about this change (include Component name, relevant props and general purpose of the PR) ([#3254](https://github.com/wix/react-native-ui-lib/pull/3254))
• Slider - add extra incubator slider props (enabled with migrate only) ([#3246](https://github.com/wix/react-native-ui-lib/pull/3246))
• Bump rexml from 3.2.5 to 3.3.6 ([#3225](https://github.com/wix/react-native-ui-lib/pull/3225))

### 7.30.0

**Features**

• Support rendering TabController inside a ScrollView (with a header) by passing `nestedInScrollView` ([#3235](https://github.com/wix/react-native-ui-lib/pull/3235))
• TabController.TabPage - added style prop to TabPage component ([#3224](https://github.com/wix/react-native-ui-lib/pull/3224))

**Fixes**

• GridView - fix after gridListIItem change ([#3001](https://github.com/wix/react-native-ui-lib/pull/3001)) ([#3222](https://github.com/wix/react-native-ui-lib/pull/3222))
• Button `borderWidth` grow outside the container fix for outline button. ([#3221](https://github.com/wix/react-native-ui-lib/pull/3221))
• Chip - changed size typings. ([#3230](https://github.com/wix/react-native-ui-lib/pull/3230))
• Incubator.Dialog - Fixed content renders. ([#3231](https://github.com/wix/react-native-ui-lib/pull/3231))
• Update style when user pass custom style. ([#3211](https://github.com/wix/react-native-ui-lib/pull/3211))
• WheelPicker separators render below the list items. ([#3232](https://github.com/wix/react-native-ui-lib/pull/3232))
• Picker support for Modal `overlayBackgroundColor`, removed default color from PickerItemList. ([#3233](https://github.com/wix/react-native-ui-lib/pull/3233))
• TabController - fix indicator when using old reanimated (ignore TS) ([#3241](https://github.com/wix/react-native-ui-lib/pull/3241))
• TextField - update type for `validate` prop ([#3160](https://github.com/wix/react-native-ui-lib/pull/3160))

**Maintenance & Infra**

• Upgrading Reanimated (3.8.1) and GestureHandler (2.14.1) + upgrade fixes ([#3203](https://github.com/wix/react-native-ui-lib/pull/3203))
• Button driver - getIconStyle, getLabelStyle functionality. ([#3217](https://github.com/wix/react-native-ui-lib/pull/3217))
• Bump micromatch from 4.0.5 to 4.0.8 ([#3237](https://github.com/wix/react-native-ui-lib/pull/3237))

### 7.29.0

What’s New?

Features

• ColorSwatch - support theme and color modifiers ([#3209](https://github.com/wix/react-native-ui-lib/pull/3209))
• Dialog - add showClose ([#3192](https://github.com/wix/react-native-ui-lib/pull/3192))
• SegmentedControl - added label. ([#3212](https://github.com/wix/react-native-ui-lib/pull/3212))

Fixes

• TextField - only require `leadingAccessory` to have a ref when needed (i.e. floatingPlaceholder={true}) ([#3197](https://github.com/wix/react-native-ui-lib/pull/3197))
• Hint - Mocked children are hidden when not backdropColor is passed. ([#3194](https://github.com/wix/react-native-ui-lib/pull/3194))
• ProgressiveImage component export ([#3213](https://github.com/wix/react-native-ui-lib/pull/3213))
• Button outlineWidth support zero value. ([#3218](https://github.com/wix/react-native-ui-lib/pull/3218))
• Badge - fix labelStyle's type ([#3207](https://github.com/wix/react-native-ui-lib/pull/3207))

Maintenance & Infra

• When passing items as empty array to the Picker, it will report an error. ([#3204](https://github.com/wix/react-native-ui-lib/pull/3204))