import type { ViewProps } from "reactnative/Libraries/Components/View/ViewPropTypes"; 
import type { HostComponent } from "react-native"; 
import codegenNativeComponent from "reactnative/Libraries/Utilities/codegenNativeComponent"; 
import { Int32 } from "react-native/Libraries/Types/CodegenTypes";
 
export type HighlightFrame = {
    x: number;
    y: number;
    width: number;
    height: number;
};

// type HighlightViewTagParams = {
//     padding: number | ViewStyle['padding'];
//     offset: Pick<HighlightFrameType, 'x' | 'y'>;
// };

export interface NativeProps extends ViewProps {   
    highlightFrame?: { x: Int32; y: Int32; width: Int32; height: Int32 };   
    overlayColor?: string;
    borderRadius?: Int32;
    strokeColor?: string;
    strokeWidth?: Int32;
    highlightViewTag?: Int32 | null;
    // highlightViewTagParams?: { padding: Int32 | { top: Int32, bottom: Int32, left: Int32, right: Int32 }, offset: { x: Int32, y: Int32 } };
    minimumRectSize?: { width: Int32; height: Int32 };
    innerPadding?: Int32;
    // 添加其它 props 
} 
 
export default codegenNativeComponent<NativeProps>("HighlighterView") as HostComponent<NativeProps>; 