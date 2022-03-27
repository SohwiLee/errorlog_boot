let ws;

function wsOpen(){
    ws = new WebSocket("ws://" + location.host + "/chat");
    wsEvent();
}

function wsEvent() {
    ws.onopen = function (message) {
        // 소캣 열리면 초기화
    }

    ws.onmessage = function (message) {
        let msg = message.data;
        if (msg != null && msg.trim() != '') {
            $("#chatHead").append("<p>" + msg + "</p>");
        }
    }


}

document.addEventListener("keypress", function (e) {
    if (e.charCode == 13) { // enter
        send();
    }
});

function chatName(){
    let userName = $("#userName").val();
    if(userName == null || userName.trim() == ""){
        alert("사용자 이름을 입력해주세요.");
        $("#userName").focus();
    }else{
        wsOpen();
        $("#yourName").hide();
        $("#yourMessage").show();
    }
}

function send(){
    let userName = $("#userName").val();
    let msg = $("#chatting").val();
    ws.send(userName + " : " + msg);
    $("#chatting").val();
}
