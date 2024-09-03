import type { TurboModule } from 'react-native/Libraries/TurboModule/RCTExport'; 
import { TurboModuleRegistry} from 'react-native'; 
 
export interface Spec extends TurboModule {   
    getNativeProps: (target: number | null) => {}; 
    scrollToStart: (target: number | null) => void;
    // KeyboardTrackingScrollBehaviorNone: () => {};
    // KeyboardTrackingScrollBehaviorScrollToBottomInvertedOnly: () => {};
    // KeyboardTrackingScrollBehaviorFixedOffset: () => number;
} 
 
export default TurboModuleRegistry.get<Spec>('KeyboardTrackingViewTempManager') as Spec | null; 