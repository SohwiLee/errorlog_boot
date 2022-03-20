<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <!-- Toast UI Editor -->
    <link rel="stylesheet" href="https://uicdn.toast.com/editor/latest/toastui-editor.min.css" />
    <title>마크다운 에디터</title>
</head>
<body>
<p>kjdalkf<strong>dfdsaf</strong></p><p><br></p><p><em>ffffff</em></p><div contenteditable="false"><hr></div><blockquote><p>zzzzzz</p></blockquote>

    <h1>마크다운 에디터 입니다</h1>
    <div id="editor"></div>
    <button onclick="seeHtml()">html보기</button>
    <button onclick="seeMd()">markdown보기</button>
    <button onclick="location.href=''" id="send">저장하기</button>
    <script src="https://uicdn.toast.com/editor/latest/toastui-editor-all.min.js"></script>
    <script>
        const Editor = toastui.Editor;

        const editor = new Editor({
            el: document.querySelector('#editor'),
            height: '600px',
            initialEditType: 'markdown',
            previewStyle: 'vertical'
        });

        seeHtml = function(){
            alert(editor.getHTML());
        }
        seeMd = function(){
            alert(editor.getMarkdown());
        }

        $(document).ready(function (){
            $("#send").click(function (){
                alert("hi");
                alert("#editor".toString());
                alert("#editor");
                alert(editor);
            })
        })
    </script>
</body>
</html>