import { LightningElement , api } from "lwc";
export default class LwcBuilderComponent2 extends LightningElement {
	@api
	title;
	@api
	show;
	@api
	recordId;
	@api
	objectApiName;
}