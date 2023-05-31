import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {

  static targets = ['start', 'end', 'sub']

  static values = {
    booking: Array
  }

  connect() {
    flatpickr(this.startTarget, {
        minDate: "today",
        disable: this.#dateBooked()
    })

    flatpickr(this.endTarget, {
        minDate: "today",
        disable: this.#dateBooked()
    })
    console.log(this.bookingValue);
  }

  #dateBooked() {
    let array = []
    this.bookingValue.forEach((booking) => {
      const date = {
        from: booking.start_date,
        to: booking.end_date
      }
      array.push(date)
    })
    return array
  }

  checkDates() {
    this.bookingValue.forEach((booking) => {
        if (this.startTarget.value >= booking.start_date && this.endTarget.value <= booking.end_date) {
          this.subTarget.disabled = false
        }
        if (booking.start_date >= this.startTarget.value && booking.end_date <= this.endTarget.value) {
          this.subTarget.disabled = true
        }
    })
  }
}
