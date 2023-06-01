import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="pin-card-hover"
export default class extends Controller {
  static targets = ["cardElement", "pin"]

  hover(event) {
    const monument_id = event.currentTarget.dataset.monument
    this.pinTargets.forEach(element => {
      if (monument_id === element.id) {
        console.log("Je rentre")
        element.classList.toggle('red-pin')
      }
    });
  }

  hoverout(event) {
    const monument_id = event.currentTarget.dataset.monument
    this.pinTargets.forEach(element => {
      if (monument_id === element.id) {
        console.log("Je sors")
        element.classList.toggle('red-pin')
      }
    });
  }
}
