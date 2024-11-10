import { Controller } from "@hotwired/stimulus";
import axios from "axios";

export default class extends Controller {
  HEADERS = { ACCEPT: "application/json" };

  connect() {
    axios
      .get("/api/boards/1/lists", { headers: this.HEADERS })
      .then((response) => {
        console.log("list reponse", response);
      });
    const board = [
      {
        id: "board-id-1",
        title: "Board Title 1",
        class: "bg-blue-500, shadow-lg, rounded-lg",
        item: [
          {
            id: "item-id-1",
            title: "Item 1",
            class: ["rounded-lg", "font-medium", "text-sm"],
            username: "username1",
          },
          {
            id: "item-id-2",
            title: "Item 2",
            username: "username2",
          },
        ],
      },
      {
        id: "board-id-2",
        title: "Board Title 2",
        item: [
          {
            id: "item-id-1",
            title: "Item 1",
            username: "username1",
          },
          {
            id: "item-id-2",
            title: "Item 2",
            username: "username2",
          },
        ],
      },
      {
        id: "board-id-3",
        title: "Board Title 3",
        item: [
          {
            id: "item-id-1",
            title: "Item 1",
            username: "username1",
          },
          {
            id: "item-id-2",
            title: "Item 2",
            username: "username2",
          },
        ],
      },
    ];
    var kanban = new jKanban({
      element: "#board",
      gutter: "15px",
      widthBoard: "250px",
      responsivePercentage: false,
      dragItems: true,
      boards: board,
      dragBoards: true,
      itemAddOptions: {
        enabled: false,
        content: "+",
        class: "kanban-title-button btn btn-default btn-xs",
        footer: false,
      },
      itemHandleOptions: {
        enabled: false,
        handleClass: "item_handle",
        customCssHandler: "drag_handler",
        customCssIconHandler: "drag_handler_icon",
        customHandler: "<span class='item_handle'>+</span> %title% ",
      },
      click: function (el) {},
      context: function (el, event) {},
      dragEl: function (el, source) {},
      dragendEl: function (el) {},
      dropEl: function (el, target, source, sibling) {},
      dragBoard: function (el, source) {},
      dragendBoard: function (el) {},
      buttonClick: function (el, boardId) {},
      propagationHandlers: [],
    });
    console.log("kanban", kanban);
  }
}
