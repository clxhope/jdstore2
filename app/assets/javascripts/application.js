// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap/alert
//= require bootstrap/dropdown
//= require bootstrap-sprockets
//= require_tree .



$(document).ready(function(){
  var $cont = document.querySelector('.cont');
  var $elsArr = [].slice.call(document.querySelectorAll('.el'));
  var $closeBtnsArr = [].slice.call(document.querySelectorAll('.el__close-btn'));

  setTimeout(function() {
    $cont.classList.remove('s--inactive');
  }, 200);

  $elsArr.forEach(function($el) {
    $el.addEventListener('click', function() {
      if (this.classList.contains('s--active')) return;
      $cont.classList.add('s--el-active');
      this.classList.add('s--active');
    });
  });

  $closeBtnsArr.forEach(function($btn) {
    $btn.addEventListener('click', function(e) {
      e.stopPropagation();
      $cont.classList.remove('s--el-active');
      document.querySelector('.el.s--active').classList.remove('s--active');
    });
  });

})



/*-------多图-------*/
$(document).on('mouseover', '.productDetail-left-imageList-item', function () {
  var src = $(this).find('img').attr('src') //从被鼠标选中的图片的src里面拿到图片链接
  $('.productDetail-left-bigImage').find('img').attr('src', src) //把图片链接设置到大图的src里面
})



// go top //
$(document).on('click', '#gotop', function () {
  $('body').animate({'scrollTop': 0}, 500) //在500ms的时间内，慢慢地回到顶部
})

$(window).scroll(function () {
  if ($(this).scrollTop() > 100) {
    $('#gotop').fadeIn() // 当页面向下滚动的距离大于500px时，慢慢地显示「回到顶部按钮」
  } else {
    $('#gotop').fadeOut() // 否则慢慢地隐藏「回到顶部按钮」
  }
})



//霓虹字//
$('[data-text]').on('keyup', function(){
  $(this).attr('data-text', $(this).text());
});
