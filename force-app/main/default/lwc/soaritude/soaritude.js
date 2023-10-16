import { LightningElement, wire, track, api } from 'lwc';
import STATIC_RESOURCE_LOGO from '@salesforce/resourceUrl/logo_soaritude';
import STATIC_RESOURCE_FOOTER from '@salesforce/resourceUrl/footer_illustration';
import getUserData from '@salesforce/apex/SoaritudeController.getUserData';
import Id from '@salesforce/user/Id';

export default class Soaritude extends LightningElement {
    staticResourceLogo = STATIC_RESOURCE_LOGO;
    staticResourceFooter = STATIC_RESOURCE_FOOTER;
    @api userId = Id;
    @track userData = [];
    @track showMenu = false;

    @wire(getUserData, {userId : '$userId'})
    getUserData({ error, data }) {
        if (data) {
            this.userData = data;
        } else if (error) {
            console.log(error);
        }
    }
    
    toggleMenu() {
        this.showMenu = !this.showMenu;
    }
}