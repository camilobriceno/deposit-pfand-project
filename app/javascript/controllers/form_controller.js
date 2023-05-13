import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="form"
export default class extends Controller {
  static targets = ["bottleType", "quantity", "cost"]

  calculateValue(){
    if(this.bottleTypeTarget.value && this.quantityTarget.value){
      let multiplier = 0;
      switch (this.bottleTypeTarget.value) {
        case "Plastic":
          multiplier = 0.15;
          break;
        case "Cans":
          multiplier = 0.25;
          break;
        case "Glass":
          multiplier = 0.08;
          break;
        default:
          break;
      }
      this.costTarget.value = (this.quantityTarget.value * multiplier).toFixed(2)
    } else{
      this.costTarget.value = 0;
    }
  }
}
