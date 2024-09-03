import type { TurboModule } from 'react-native/Libraries/TurboModule/RCTExport'; 
import { TurboModuleRegistry} from 'react-native'; 
 
interface initialPropsInterface {
    title: string
}

interface InputInterface {
    component: string
    initialProps: initialPropsInterface
    useSafeArea: boolean
}

export interface Spec extends TurboModule {   
    presentCustomInputComponent: (reactTag: number | null, inputObj: InputInterface) => {}; 
    resetInput: (reactTag: number | null) => void;
    dismissKeyboard: () => void;
    expandFullScreenForInput: (reactTag: number | null) => void;
    resetSizeForInput: (reactTag: number | null) => void;
} 
 
export default TurboModuleRegistry.get<Spec>('CustomInputControllerTemp') as Spec | null; 