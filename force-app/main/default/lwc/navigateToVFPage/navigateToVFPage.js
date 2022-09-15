import { LightningElement } from 'lwc';
import{NavigationMixin} from 'lightning/navigation';
export default class NavigateToVFPage extends NavigationMixin(LightningElement) {
    vfHandler(){
        this[NavigationMixin.Navigate]({
            type:"standard__webPage",
            attributes:{
                url:"/apex/navigatetoVFPage"
            }
        }).then(generatedUrl=>{
            console.log(generatedUrl)
            window.open(generatedUrl)
        })
    }
}