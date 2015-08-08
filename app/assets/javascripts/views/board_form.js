Trello.Views.BoardForm = Backbone.View.extend({
  template: JST["boards/form"],

  tagName: "form",

  events: {
    "click .submit-form" : "addBoard"
  },

  render: function () {
    var renderedContent = this.template({board: this.model});
    this.$el.html(renderedContent);
    return this;
  },

  addBoard: function (event) {
    event.preventDefault();
    var formdata = this.$el.serializeJSON();
    var view = this;
    this.model.set(formdata);
    this.model.save({}, {
      success: function () {
        view.collection.add(view.model, {merge: true});
        Backbone.history.navigate("", {trigger: true});
      }
    });
  }
});
