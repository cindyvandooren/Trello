Trello.Collections.Boards = Backbone.Collection.extend({
  url: "/api/boards",

  model: Trello.Models.Board,

  getOrFetch: function (id) {
    var collection = this;
    var board = collection.get(id);

    if (board) {
      board.fetch();
    } else {
      board = new Trello.Models.Board({id: id});
      board.fetch({
        success: function () {
          collection.add(board);
        }
      });
    }
    return board;
  }
});
