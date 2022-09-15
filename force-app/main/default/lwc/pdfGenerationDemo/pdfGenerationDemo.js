import { api, LightningElement } from 'lwc';
import generatePdf from '@salesforce/apex/pdfController.generatePdf';
export default class PdfGenerationDemo extends LightningElement {
    @api recordId
    imageUrl = 'https://www.sparksuite.com/images/logo.png'
    invoiceData={
        invoiceNo:'123',
        invoiceCreated:'June 23, 2022',
        invoiceDue:'June 23, 2023',
        companyName:'Sparksuite, Inc.',
        address1:'517501 KT Road',
        address2:'Tirupati, AP 517501'
    }
    clientData={
        client:'Acme Corp',
        username:'John Doe',
        email:'ajayviswanaduni4248@gmail.com'
    }
    services=[
        {name:'Consultant fee',amount:1000.00},
        {name:'Web Design',amount:300.00},
        {name:'Hosting(3 Months)',amount:75.00}
    ]

    get totalAmount(){
        return this.services.reduce((total,service)=>{
            return total = total+service.amount
        },0)
    }
    pdfHandler(){
        let content = this.template.querySelector('.container')
        console.log(content.outerHTML)
        generatePdf({recordId:this.recordId,htmlData:content.outerHTML}).then(result=>{
            console.log("attachment ID",result)
            window.open(`https://oscarit-5b-dev-ed--c.documentforce.com/servlet/servlet.FileDownload?file=${result.Id}`)
        }).catch(error=>{
            console.error(error)
        })
    }
}