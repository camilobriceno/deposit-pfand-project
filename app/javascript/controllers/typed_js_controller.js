import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Tell us how many bottles do you want to give away.", "Tell us when to pic the bottles up.", "We connect you with someone to pick them up."],
      typeSpeed: 100,
      loop: true
    })
  }
}
