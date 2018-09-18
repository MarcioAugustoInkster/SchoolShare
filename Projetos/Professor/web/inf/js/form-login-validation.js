$(document).on("click", "#somebutton", function () {  // When HTML DOM "click" event is invoked on element with ID "somebutton", execute the following function...
    $.get("someservlet", function (responseJson) {    // Execute Ajax GET request on URL of "someservlet" and execute the following function with Ajax response JSON...
        var $ul = $("<ul>").appendTo($("#somediv")); // Create HTML <ul> element and append it to HTML DOM element with ID "somediv".
        $.each(responseJson, function (index, item) { // Iterate over the JSON array.
            $("<li>").text(item).appendTo($ul);      // Create HTML <li> element, set its text content with currently iterated item and append it to the <ul>.
        });
    });
});

/*****/

$(document).ready(function () {
    $('#go-submit-login').click(function () {
        $.post('validaLogin', function (responseText) {
            $('#login_failed').text(responseText);
        });
    });
});


$("#go-submit-login").click(function () {
    $.ajax({
        url: 'validaLogin',
        data: {name: 'abc'},
        type: 'post',
        cache: false,
        success: function (data) {
            alert(data);
            $('#login_failed').html('<b>Usuário</b> ou <b>Login</b> incorreto : ' + data);
            //.text(responseText);
        },
        error: function () {
            alert('error');
        }
    }
    );
}
);