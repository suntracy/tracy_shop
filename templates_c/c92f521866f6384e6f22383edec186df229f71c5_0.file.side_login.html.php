<?php
/* Smarty version 3.1.29, created on 2020-11-03 05:37:01
  from "C:\UniServerZ\www\tracy_shop-master\templates\side_login.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa0ec7d9e8498_79647875',
  'file_dependency' => 
  array (
    'c92f521866f6384e6f22383edec186df229f71c5' => 
    array (
      0 => 'C:\\UniServerZ\\www\\tracy_shop-master\\templates\\side_login.html',
      1 => 1603786034,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa0ec7d9e8498_79647875 ($_smarty_tpl) {
?>
<form action="user.php" method="post" role="form" class="form-horizontal">
  <div class="form-group">
    <label class="col-md-4 control-label">帳號：</label>
    <div class="col-md-8">
      <input type="text" name="user_id" id="user_id" class="form-control" placeholder="請輸入帳號">
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4 control-label">密碼：</label>
    <div class="col-md-8">
      <input type="password" name="user_passwd" id="user_passwd" class="form-control" placeholder="請輸入密碼">
    </div>
  </div>

  <div class="form-group">
    <label class="col-md-4">
      <a href="user.php?op=user_form" class="btn btn-link">註冊</a>
    </label>
    <div class="col-md-8">
      <input type="hidden" name="op" value="user_login">
      <button type="submit" name="button" class="btn btn-primary btn-block">登入</button>
    </div>
  </div>
</form><?php }
}
