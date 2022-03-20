// // 로그인 임시
// function login(form){
//     alert("로그인 되었습니다.");
//     location.href = "goMain";
// }
// function join(form) {
//     //유효성검사통과확인을 위한 변수
//     let check = false;
//
//     //유효성검사
//     if (checkVal(form)) {
//         check = true;
//     }
//     ;
//     // alert("체크통과")
//
//     //유효성검사 통과했을시
//     if (check === true) {
//         let id = form.id.value;
//         let pw = form.pw1.value;
//         let name = form.name.value;
//         let separate = form.separate.value;
//         let phone = form.phone.value;
//         let email = form.email.value;
//         let addr = form.address.value;
//         let x = form.x.value;
//         let y = form.y.value;
//
//         $.ajax({
//             url: '/v1/users',
//             contentType: 'application/json; charset=utf-8',
//             method: 'POST',
//             data: JSON.stringify({
//                 id: id,
//                 pw: pw,
//                 name: name,
//                 separate: separate,
//                 phone: phone,
//                 email: email,
//                 addr : addr,
//                 x : x,
//                 y : y
//             })
//         }).done(res => {
//             // alert(res);
//
//             if (res) {
//                 location.href = "/login";
//             } else {
//                 alert("이미 사용중인 아이디입니다.");
//             }
//         })
//     }
// }
//
//
// function checkVal(form) {
//     console.log("checkVal")
//     if (!checkId(form)) {
//         return false;
//     } else if (!checkPw(form)) {
//         return false;
//     } else if (!checkName(form)) {
//         return false;
//     } else if (!checkPhone(form)) {
//         return false;
//     } else if (!checkMail(form)) {
//         return false;
//     } else if (!checkAddress(form)){
//         return false;
//     }
//     // else if (!checkPhonnumber(form)) {
//     //     return false;
//     // }
//     return true;
// }
//
// //공백체크함수
// function checknull(value) {
//     if (value == "") {
//         return false;
//     }
//     return true;
// }
//
// //아이디 유효성검사
// function checkId(inputValue) {
//     if (!checknull(inputValue.id.value)) {
//         alert("아이디가 공백입니다")
//
//         inputValue.id.focus();
//         return false;
//     }
//     let valTest = /^[a-zA-Z0-9]{4,12}$/
//
//     if (!valTest.test(inputValue.id.value)) {
//         alert("아이디는 (영문or대소문자or숫자)4~12자리로 입력")
//
//         inputValue.id.value = "";
//         inputValue.id.focus();
//
//         return false;
//     }
//     return true;
//
// }
//
// //비밀번호 유효성검사
// function checkPw(form) {
//     // alert("checkPw")
//     if (!checknull(form.pw1.value)) {
//         alert("비밀번호가 공백입니다");
//         form.pw1.focus();
//         return false;
//     }
//     let valTest = /^[a-zA-Z0-9]{4,12}$/
//
//     if (!valTest.test(form.pw1.value)) {
//         alert("비번은 영문(대문자 OR 소문자 OR 숫자)4~12자리로 입력");
//         form.pw1.value = "";                                             //input태그 name=pw1 인곳 공백만듬
//         form.pw1.focus();                                                //포커스잡아줌
//         return false;
//     }
//
//     if (form.pw1.value == form.id.value) {
//         alert("아디와 비번이 같으면 안됩니다");
//         form.pw1.value = "";
//         form.pw1.focus();
//         return false;
//     }
//
//     if (!checknull(form.pw2.value)) {
//         alert("재확인비밀번호가 공백입니다")
//         form.pw2.focus();
//         return false;
//     }
//
//     if (form.pw2.value != form.pw1.value) {
//         alert("처음입력한 비밀번호와 맞지않습니다");
//         form.pw2.value = "";
//         form.pw2.focus();
//         return false;
//     }
//     return true;
// }
//
// //이름 검사
// function checkName(form) {
//     // alert("여들어오냐")
//     if (!checknull(form.name.value)) {
//         alert("이름이 공백입니다")
//         // const form = document.info;
//         form.name.value = "";
//         form.name.focus();
//         return false;
//     }
//
//     let valTest = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|$]/;       //한글영어만 입력받기
//     if (!valTest.test(form.name.value)) {
//         alert("이름은 한글or영문or대소문자로 입력");
//
//         // const form = document.info;
//         form.name.value = "";      //input태그 name이 name 인곳 공백만듬
//         form.name.focus();        //포커스잡아줌
//         return false;
//     }
//     // alert("이름검사끝")
//     return true;
// }
//
// function checkPhone(form) {
//     if (!checknull(form.phone.value)) {
//         alert("전화번호가 공백입니다")
//         // const form = document.info;
//         form.phone.value = "";      //input태그 email이 email 인곳 공백만듬
//         form.phone.focus();
//         return false;
//     }
//
//     let valTest = /^01([0|1|6|7|8|9])([0-9]{3,4})([0-9]{4})$/;
//
//     if (!valTest.test(form.phone.value)) {
//         alert("전화번호를 확인해주세요");
//         // const form = document.info;
//         form.phone.value = "";      //input태그 name이 email 인곳 공백만듬
//         form.phone.focus();        //포커스잡아줌
//         return false;
//     }
//
//     return true;
//
// }
//
// //메일 검사
// function checkMail(form) {
//     if (!checknull(form.email.value)) {
//         alert("메일이 공백입니다")
//         // const form = document.info;
//         form.email.value = "";      //input태그 name이 email 인곳 공백만듬
//         form.email.focus();
//         return false;
//     }
//
//     let valTest = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
//
//     if (!valTest.test(form.email.value)) {
//         alert("이메일주소를 확인해주세요");
//         // const form = document.info;
//         form.email.value = "";      //input태그  name이 email 인곳 공백만듬
//         form.email.focus();        //포커스잡아줌
//         return false;
//     }
//
//     return true;
// }
//
// //전화번호검사
// // function checkPhonnumber(form){
// //     if(!checknull(form.phone.value)){
// //         alert("전화번호가 공백입니다")
// //         return false;
// //     }
// //
// //     return true;
// // }
//
//
// // ----- 주소 찾기 -----
// var mylat;
// var mylong;
// var geocoder = new daum.maps.services.Geocoder();
// window.onload = () => {
//     mylat = document.getElementById('x').value;
//     mylong = document.getElementById('y').value;
// }
//
// // 다음 주소 api연동
// function sample4_execDaumPostcode() {
//     new daum.Postcode({
//         oncomplete: function(data) {
//             var addr = data.address; // 최종 주소 변수
//
//             // 주소 정보를 해당 필드에 넣는다.
//             document.getElementById("address").value = addr;
//
//             // 주소로 상세 정보를 검색
//             geocoder.addressSearch(data.address, function(results, status) {
//                 // 정상적으로 검색이 완료됐으면
//                 if (status === daum.maps.services.Status.OK) {
//
//                     var result = results[0]; //첫번째 결과의 값을 활용
//                     mylat = result.y;
//                     mylong= result.x;
//                     document.getElementById("x").value = mylat;
//                     document.getElementById("y").value = mylong;
//                 }
//             });
//         }
//     }).open();
// }
//
// //주소 검사
// function checkAddress(form) {
//     if (!checknull(form.address.value)) {
//         alert("주소를 입력해주세요")
//         form.address.value = "";
//         form.address.focus();
//         return false;
//     }
//     return true;
// }