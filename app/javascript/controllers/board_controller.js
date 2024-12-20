import { Controller } from "@hotwired/stimulus";
import axios from "axios";
import { get, map, sample } from "lodash-es";

export default class extends Controller {
  HEADERS = { ACCEPT: "application/json" };

  BACKGROUNDS_COLORS = [
    "bg-red-700",
    "bg-green-700",
    "bg-blue-700",
    "bg-yellow-700",
    "bg-indigo-700",
    "bg-purple-700",
    "bg-pink-700",
  ];

  buildClassList() {
    return `text-white, rounded-lg, shadow-lg, text-bold, font-medium, ${sample(
      this.BACKGROUNDS_COLORS
    )}`;
  }

  buildItems(items) {
    return map(items, (item) => {
      return {
        id: get(item, "id"),
        title: get(item, "attributes.title"),
        class: this.buildClassList(),
      };
    });
  }

  builBoards(boardsData) {
    return map(boardsData["data"], (board) => {
      return {
        id: get(board, "id"),
        title: get(board, "attributes.title"),
        class: this.buildClassList(),
        item: this.buildItems(get(board, "attributes.items.data")),
      };
    });
  }

  buildkanban(boards) {
    new jKanban({
      element: `#${this.element.id}`,
      boards: boards,
      itemAddOptions: {
        enabled: true,
        content: "+ Add Item",
        class: "kanban-title-button btn btn-default btn-xs",
        footer: true,
      },
      click: () => {
        console.log("Click");
      },
    });
  }

  getHeaderTitles() {
    return Array.from(document.getElementsByClassName("kanban-title-board"));
  }

  cursorifyHeaderTitles() {
    this.getHeaderTitles().forEach((headerTitle) => {
      headerTitle.classList.add("cursor-pointer");
    });
  }

  addLinkToHeaderTitles(boards) {
    this.getHeaderTitles().forEach((headerTitle, index) => {
      headerTitle.addEventListener("click", () => {
        Turbo.visit(
          `${this.element.dataset.boardListsUrl}/${boards[index].id}/edit`
        );
      });
    });
  }

  connect() {
    axios
      .get(this.element.dataset.apiUrl, { headers: this.HEADERS })
      .then((response) => {
        this.buildkanban(this.builBoards(response["data"]));
        this.cursorifyHeaderTitles();
        this.addLinkToHeaderTitles(this.builBoards(response["data"]));
      });
  }
}
