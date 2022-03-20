let user_id = null;

window.onload = function (){
    // 해당 글 불러오기
    const no = document.getElementById("no").value;
    $.ajax({
        url : `/v1/feed/no=${no}`,
        method : 'get'
    }).done(res => {
        // 2. 유저가 해당 글에 '좋아요' 눌렀는 지 파악
        $.ajax({
            url : `/v1/feedLike/id=${res.user_id}/no=${no}`,
            method: 'get'
        }).success(like => {
            const myLike = like;
            const feed_no = res.no;
            user_id = res.user_id;
            const feed_image = res.imagefile;
            const content = res.content;
            const likes = res.likes;

            if(myLike === ""){
                // 2-1. 사용자가 해당글에 좋아요를 누르지 않은 경우
                $('div.feed-wrap').append(
                    ` <span>이미지${feed_image}</span><br>
                    <span>내용${content}</span><br>
                    <span>by ${user_id}</span><br>
                    <span><a onclick="checkLike(this.id)" id="${feed_no}">♡</a>${likes}개</span>`
                );
            }else{
                // 2-2. 사용자가 해당글에 좋아요를 누른 경우
                $('div.feed-wrap').append(
                ` <span>이미지${feed_image}</span><br>
                    <span>내용${content}</span><br>
                    <span>by ${user_id}</span><br>
                    <span><a onclick="cancelLike(this.id)" id="${feed_no}">♥</a>${likes}개</span>`
                );
            }

        })
    });
}

// 좋아요 누르기
// * 좋아요 수 증가시키기
function checkLike(feed_no){
    $.ajax({
        url : '/v1/feedLike',
        method : 'post',
        contentType: 'application/json;charset=utf-8',
        data : JSON.stringify({
            "user_id" : `${user_id}`,
            "feed_no" : `${feed_no}`
        })
    }).done(res => {
        console.log("좋아요 누름")
        console.log(res);
        // 새로고침
        location.reload();
    })
}

// 좋아요 취소하기
// * 좋아요 수 감소시키기
function cancelLike(feed_no){
    $.ajax({
        url : '/v1/feedLike',
        method : 'delete',
        contentType: 'application/json;charset=utf-8',
        data : JSON.stringify({
            "user_id" : `${user_id}`,
            "feed_no" : `${feed_no}`
        })
    }).done(res => {
        console.log("좋아요 취소");
        console.log(res);
        // 새로고침
        location.reload();
    })
}