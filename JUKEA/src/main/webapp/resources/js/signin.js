function test() {
   var frmlogin = document.frmlogin;
    var id = document.getElementById('pid').value;
    var name = document.getElementById('pname').value;
    var password = document.getElementById('pwd').value;
    var checkpassword = document.getElementById('ckpwd').value;
    var nickname = document.getElementById('nname').value;
    var email = document.getElementById('pemail').value;
    var birthday = document.getElementById('mbirthday').value;
    var address = document.getElementById('paddress').value;
    var phone1 = document.getElementById('hp1').value;
    var phone2 = document.getElementById('hp2').value;
    var phone3 = document.getElementById('hp3').value;
    var date = new Date;
    var year = date.getFullYear();
    var b_year = Number(birthday.substr(0,4));
    var result = year - b_year;
    
    if(id == "")
    {
        alert('아이디를 입력해주세요.');
            return false;
    }
    if(password == "")
    {
        alert('비밀번호를 입력해주세요.');
            return false;
    }
    if(nickname == "")
    {
        alert('닉네임을 입력해주세요.');
            return false;
    }
     if(name == "")
    {
        alert('이름을 입력해주세요.');
            return false;
    }
    if(email == "")
    {
        alert('이메일을 입력해주세요.');
            return false;
    }
    if(phone1 == "" && phone2 == "" && phone3 == "")
    {
        alert('전화번호를 입력해주세요.');
            return false;
    }
    if(result < 20)
   {
      alert(`미성년자는 회원가입이 불가합니다`);
      return false;
   }
   if(password.length < 6) {
            alert('입력한 글자가 6글자 이상이어야 합니다.');
            return false;
        }
       if( password != checkpassword ) {
          alert("비밀번호불일치");
          return false;
        } 
  }