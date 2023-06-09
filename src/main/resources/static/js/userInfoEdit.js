// 체크박스 연결
let all_chk = document.querySelector(".all_chk");
let chk1 = document.querySelectorAll(".checkbox1");
console.log(chk1)

all_chk.addEventListener("click", function() {
    let all_chk_ok = all_chk.checked

    for(i=0; i<chk1.length; i++) {
        chk1[i].checked = all_chk_ok;
    }
})

for(i=0; i < chk1.length; i++) {
    chk1[i].addEventListener("click", function(event) {
        chk2 = document.querySelectorAll(".checkbox1:checked")

        if(event.target.checked == false){
            all_chk.checked = false
        } else if(chk2.length == chk1.length) {
            all_chk.checked = true
        }
    }
)}

// 주소 검색
window.onload = function () {
    let sc = document.querySelector(".search_add")
    sc.addEventListener("click", function () { //주소입력칸을 클릭하면
       //카카오 지도 발생
       new daum.Postcode({
            oncomplete: function (data) { //선택시 입력값 세팅
            document.querySelector("#add1").value = data.address; // 주소 넣기
            document.querySelector("input[name=add2]").focus(); //상세입력 포커싱
          }
       }).open();
    });
};

// let id = document.querySelector("#id")
// let id_val = id.value
// id.addEventListener("blur", function() {
//     // if(event.target.length == 0) {
//     //     id_val = id_val
//     // }
// })

let save_btn = document.querySelector(".save")
let form_save = document.querySelector(".save_form")
save_btn.addEventListener("click", function() {
    console.log(1)
    form_save.submit();
})

let out_btn = document.querySelector(".out_btn")
let form_out = document.querySelector(".user_out")
let out_chk = document.querySelector(".out_check")
let chk_pw = document.querySelector(".chk_pw")
out_btn.addEventListener("click", function() {
    if(out_chk.style.display != "block") {
        out_chk.style.display = "block"
    } else if(chk_pw.value == "") {
        alert("비밀번호를 입력해주세요")
    } else {
        form_out.submit();
    }
})

const autoHyphen = (target) => {
        target.value = target.value
          .replace(/[^0-9]/g, '')
          .replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
    }
    
const autoHyphen2 = (target) => {
        target.value = target.value
          .replace(/[^0-9]/g, '')
          .replace(/^(\d{4})(\d{2})(\d{2})$/, `$1-$2-$3`);
    }
