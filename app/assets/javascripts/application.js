// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery

$(document).on('turbolinks:load', function () {

  // $('[data-behavior~="say-hi"]').on('click', function() {
  //   alert('say Hi');
  // });

  // const checkmarks = $('[data-behavior="say-hi"]');

  const parentTags = $('.parent-tag');

  for (let parentTag of parentTags) {
    if (parentTag.checked) {
      $(`[class^="subtag-${parentTag.value}"]`).css('display','inline');
    }
  }

  $('.parent-tag').on('click', function() {
    // debugger;
    if (this.checked) {
      $(`[class^="subtag-${this.value}"]`).css('display','inline');
    } else {
      $(`[class^="subtag-${this.value}"]`).css('display','none');
      // also uncheck them here
      $(`.subtag-${this.value}`).prop('checked', false);
    }
  })



});

// $(document).on("click", "[data-behavior~=say-hi]", () => {
//   // return App.Billing.update();
//     // alert('say Hi');
//   debugger;
//
// });
