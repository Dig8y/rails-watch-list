import { Controller } from "@hotwired/stimulus"
import StarRating from "star-rating.js"

export default class extends Controller {
  connect() {
    console.log("Tom Select");
    new StarRating(this.element)
  }
}
