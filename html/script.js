window.addEventListener('message', function(event){
    var item = event.data;
    if (item.action == "question") {
        if (item.show == true) {
            $("#question").css("display", "inline-flex")
            $("#question_header").html(item.header)
            $("#question_message").html(item.message)
        } else {
            $("#question").fadeOut(550)
            $("#question_header").empty()
            $("#question_message").empty()
        }
    }
    if (item.action == "topnotification") {
        if (item.show == true) {
            $("#topNotification").css("display", "block")
            $("#topNotification_header").html(item.header)
            $("#topNotification_message").html(item.message)
        } else {
            $("#topNotification").fadeOut(550)
            $("#topNotification_header").empty()
            $("#topNotification_message").empty()
        }
    }
});