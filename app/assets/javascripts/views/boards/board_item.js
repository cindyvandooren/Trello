Trello.Views.BoardItem = Backbone.View.extend({
  template: JST["boards/board_item"],

  tagName: "li",
  
  render: function () {
    var renderedContent = this.template({board: this.model});
    this.$el.html(renderedContent);
    return this;
  }
});
