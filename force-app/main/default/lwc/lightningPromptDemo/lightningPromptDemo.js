import { LightningElement } from 'lwc';
import LightningPrompt from 'lightning/prompt'
import LightningAlert from 'lightning/alert'
export default class LightningPromptDemo extends LightningElement {

//    async promptHandler(){
//        const result = await LightningPrompt.open({
//             message:"Please Enter your age"
//         })
//         console.log(result)
//     }
 promptHandler(){
    LightningPrompt.open({
         message:"Please Enter your age",
         label:"Check your voting Eligibility",
        theme:"success"
     }).then(result=>{
        console.log(result)
        if(result && Number(result)>=18){
            this.alertHandler("Hurray!! You're eligibile for voting","Success","success")
        }
         else{
            this.alertHandler("Sorry:( You're not eligibile for voting","Regret:(","error")
         }
     })    
  }

  alertHandler(message,label,theme){
    LightningAlert.open({
        message:message,
        theme:theme,
        label:label
  })
 }
}