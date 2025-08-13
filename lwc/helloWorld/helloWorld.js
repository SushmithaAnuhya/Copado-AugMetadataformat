import { LightningElement } from 'lwc';
export default class HelloWorld extends LightningElement {
        greeting = 'Worldchanged';
        changeHandler(event) {
        this.greeting = event.target.value;
        }
}