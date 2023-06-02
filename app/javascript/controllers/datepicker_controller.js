import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connectss to data-controller="datepicker"
export default class extends Controller {

  static targets = ['start', 'end', 'sub', 'price']

  static values = {
    booking: Array,
    curbooking: Object,
    monument: Object
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
    let b = this.bookingValue
    this.bookingValue.forEach((booking, index) => {
      if (booking.id === this.curbookingValue.id) {
        delete b[index]
      }
    })
    b.forEach((booking) => {
      if (booking.status !== 'Rejected') {
        const date = {
          from: booking.start_date,
          to: new Date(Date.parse(booking.end_date) - 86_400_000).toISOString().slice(0, 10)
        }
        array.push(date)
      }
    })
    return array
  }

  checkDates() {
    let a = []
    let c = this.bookingValue
    this.bookingValue.forEach((booking, index) => {
      if (booking.id === this.curbookingValue.id) {
        delete c[index]
      }
    })
    c.forEach((booking) => {
      if (booking.status !== 'Rejected') {
        if (booking.start_date >= this.startTarget.value && booking.end_date <= this.endTarget.value) {
          a.push(true)
        } else {
          a.push(false)
        }
      }
    })
    if (a.find(element => element === true) || this.startTarget.value >= this.endTarget.value) {
      this.subTarget.disabled = true
    } else {
      this.subTarget.disabled = false
    }
  }

  priceCalc() {
    if (this.startTarget.value !== '' && this.endTarget.value !== '' && this.startTarget.value < this.endTarget.value)  {
      this.priceTarget.innerHTML = `<strong>Total price: </strong>${(Date.parse(this.endTarget.value) - Date.parse(this.startTarget.value)) / 86_400_000} night(s) x ${this.monumentValue.price} = <strong>${(Date.parse(this.endTarget.value) - Date.parse(this.startTarget.value)) / 86_400_000 * this.monumentValue.price} $</strong>`
    }
  }
}
