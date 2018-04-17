$(document).on('turbolinks:load',function(){
    var postal = $('#customer_postal_code');
    var postalNote =$('#secZipCode').find('.note');
    var regexpPostal = /^\d{7}$/;
    var email = $('#customer_email');
    var emailNote = $('.main').find('.note');
    var regexpEmail = /^[A-Za-z0-9]{1}[A-Za-z0-9_.-]*@{1}[A-Za-z0-9_.-]{1,}\.[A-Za-z0-9]{1,}$/;
    var password = $('#customer_password');
    var passwordNote = $('.passErr').find('.note');
    var passwordConfirm = $('#customer_password_confirmation');
    var passwordConfirmNote = $('.passConfErr').find('.note');
    var rule = $('#customer_check_rule');
    var ruleNote = $('.check_rule');


  function checkPostal() {
    if(!regexpPostal.test(postal.val())){
      addErrClass(postalNote, postal)
      postalNote.text('郵便番号をハイフン無しの数字 7ケタで入力してください。');
      return false;
    }
  return true;
  }


  function checkEmail(){
    if(email.val() == ''){
      addErrClass(emailNote, email);
      emailNote.text('メールアドレスを入力してください');
      return false;
    }
    else if(!regexpEmail.test(email.val())){
      addErrClass(emailNote, email);
      emailNote.text('メールアドレスが無効な形式です。');
      return false;
    }
  return true;
  }

  function checkPassword(){
    if(password.val() == ''){
      addErrClass(passwordNote, password);
      passwordNote.text('パスワードを入力してください。');
      return false;
    }
  return true;
  }

  function checkPasswordConf(){
    if(passwordConfirm.val() !== password.val()){
      addErrClass(passwordConfirmNote, passwordConfirm);
      passwordConfirmNote.text('パスワードが異なっています。');
      return false;
    }
    return true;
  }

  function checkRule(){
    if(rule.prop('checked')){
      ruleNote.removeClass('errTxt');
      ruleNote.text('　');
      return true;
    }else{
      ruleNote.addClass('errTxt');
      ruleNote.text('利用規約、個人情報保護方針に同意するにチェックが入っていません');
      return false;
    }
  }

  function checkAll(){
    checkPostal();
    checkEmail();
    checkPassword();
    checkPasswordConf();
    checkRule();
    if(checkPostal()&&checkEmail()&&checkPassword()&&checkPasswordConf()&&checkRule()){
      return true;
    }
    return false;
  }

  function addErrClass(note, frame) {
    note.addClass('errTxt');
    frame.addClass('err');
  }

  function removeErrClass(note, frame){
    note.removeClass('errTxt');
    frame.removeClass('err');
  }


  $(email).on('blur',function(){
    checkEmail();
  });

  $(email).on('focus',function(){
    removeErrClass(emailNote, email);
    emailNote.text('※メールアドレスがZOZO IDとなります');
  });

  $(postal).on('blur',function(){
    checkPostal();
  });

  $(postal).on('focus',function(){
    removeErrClass(postalNote, postal);
    postalNote.text('※数字７ケタ、ハイフン無し');
  });

  $(password).on('blur',function(){
    checkPassword();
  });

  $(password).on('focus', function(){
    removeErrClass(passwordNote, password);
    passwordNote.text('※ZOZO IDに含まれない英数字混合８〜１２文字');
  });

  $(passwordConfirm).on('blur',function(){
    checkPasswordConf();
  });

  $(passwordConfirm).on('focus', function(){
    removeErrClass(passwordConfirmNote, passwordConfirm);
    passwordConfirmNote.text('※パスワードを再入力');
  });

  $('.gBtn').on('click', function(e){
      return checkAll();
  });
});
