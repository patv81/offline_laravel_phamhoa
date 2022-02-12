$(document).ready(function () {
    $.get($('#box-gold').data('url'), function (data) {
        $('#box-gold').html(data);
    }, 'html');

    $.get($('#box-coin').data('url'), function (data) {
        $('#box-coin').html(data);
    }, 'html');
    $("#submitContact").on('click', function (e){
        let arr={};
        arr['fullname'] = $("input[name=fullname]").val();
        arr['email'] = $("input[name=email]").val();
        arr['phone'] = $("input[name=phone]").val();
        console.log(arr);
        if (localStorage) {
            localStorage.setItem ('arrContact',JSON.stringify(arr) );
        } else {
            // No support. Fallback here!
        }
    });
    window.onload = function() {
        let arr = JSON.parse(localStorage.getItem('arrContact')) ;
        $("input[name=fullname]").val(arr['fullname']);
        $("input[name=email]").val(arr['email']);
        $("input[name=phone]").val(arr['phone']);
    };
  $('.dropdown-submenu a.test').on("click", function(e){
    $(this).next('ul').toggle();
    e.stopPropagation();
    e.preventDefault();
  });
});
