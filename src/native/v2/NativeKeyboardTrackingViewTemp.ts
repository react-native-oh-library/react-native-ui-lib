import type { ViewProps } from "reactnative/Libraries/Components/View/ViewPropTypes"; 
import type { HostComponent } from "react-native"; 
import codegenNativeComponent from "reactnative/Libraries/Utilities/codegenNativeComponent"; 
import { Int32 } from "react-native/Libraries/Types/CodegenTypes";
// import { Int32 } from "react-native/Libraries/Types/CodegenTypes";

export interface NativeProps extends ViewProps {
    text?: string
    // 添加其它 props 
    scrollBehavior?: Int32
} 
 
export default codegenNativeComponent<NativeProps>("KeyboardTrackingViewTemp") as HostComponent<NativeProps>; 