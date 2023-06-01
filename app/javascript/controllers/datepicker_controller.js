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
  }

  endDate() {
    flatpickr(this.endTarget, {
      minDate: new Date(Date.parse(this.startTarget.value) + 86_400_000).toISOString().slice(0, 10),
      disable: this.#dateBooked()
    })
  }

  startDate() {
    flatpickr(this.startTarget, {
      minDate: "today",
      maxDate: new Date(Date.parse(this.endTarget.value) - 86_400_000).toISOString().slice(0, 10),
      disable: this.#dateBooked()
    })
  }

  #dateBooked() {
    let array = []
    this.bookingValue.forEach((booking) => {
      const date = {
        from: booking.start_date,
        to: new Date(Date.parse(booking.end_date) - 86_400_000).toISOString().slice(0, 10)
      }
      array.push(date)
    })
    return array
  }

  checkDates() {
    let a = []
    this.bookingValue.forEach((booking) => {
      if (booking.start_date >= this.startTarget.value && booking.end_date <= this.endTarget.value) {
        a.push(true)
      } else {
        a.push(false)
      }
    })
    if (a.find(element => element == true)) {
      this.subTarget.disabled = true
    } else {
      this.subTarget.disabled = false
    }
  }
}
