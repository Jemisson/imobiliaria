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
//= require jquery
//= require rails-ujs
//= require activestorage
//= require bootstrap
//= require turbolinks
//= require_tree .

$(document).on('turbolinks:load',function(){

  $('.carousel').carousel()

  $('#bookmark_carousel .carousel-item:first-child').addClass('active');

  $('.previous_page').text('Anterior');
  $('.next_page').text('Próximo');

  function to_real(value){
    var emDecimal = (value/100);
    var strString = emDecimal.toString();

    strString=strString.replace(".", ",");
    formatado = strString.replace(/\B(?=(\d{3})+(?!\d))/g, ".");

    var resultado ="R$ " + formatado;

    return resultado;
  };


  $('.real').each(function(){
    $(this).text(to_real($(this).text()));
  });

})
