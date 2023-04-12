import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  connect() {
    console.log("Connecting to " + this)
    //this.element.textContent = "Hello Andrew!"
  }
}
