import { Controller } from "@hotwired/stimulus";
import { jKanban } from "jkanban";

export default class extends Controller {
  connect() {
    console.log("Hello, this is board controller!");
    var kanban = new jKanban();
    console.log("kanban", kanban);
  }
}
