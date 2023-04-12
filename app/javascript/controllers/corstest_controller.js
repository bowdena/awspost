import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="corstest"
export default class extends Controller {
  connect() {
    console.log("Connected!");
  }

  triggertest(){
    console.log("nicks-cors-test");
    $.ajax
    ({
        url: "https://api.github.com",
        success: function(data)
        {
            console.log(data);
        }
    });
  }
}
