// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory can be referenced here using a relative path.
//
//= require jquery
//= require turbolinks
//= require_tree .
//= require_self

$(document).on('turbolinks:load', function () {
  // turbolink dom ready instead of JQuery;
  // #coffeescript
  // $(document).on 'turbolinks:load', () ->
  //   // body here
});
