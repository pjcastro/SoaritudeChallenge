import { LightningElement, api } from 'lwc';

export default class SoaritudeCustomCard extends LightningElement {
    @api iconName;
    @api cardTitle;
    @api cardText;
}