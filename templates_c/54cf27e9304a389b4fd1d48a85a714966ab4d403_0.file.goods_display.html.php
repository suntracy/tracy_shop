<?php
/* Smarty version 3.1.29, created on 2020-11-06 07:23:36
  from "C:\UniServerZ\www\tracy_shop-master\templates\goods_display.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa4f9f827c373_79258046',
  'file_dependency' => 
  array (
    '54cf27e9304a389b4fd1d48a85a714966ab4d403' => 
    array (
      0 => 'C:\\UniServerZ\\www\\tracy_shop-master\\templates\\goods_display.html',
      1 => 1604647414,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa4f9f827c373_79258046 ($_smarty_tpl) {
?>
<div class="row">
  <div class="col-md-6">
    <img src="<?php echo $_smarty_tpl->tpl_vars['goods']->value['pic'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
" class="img-thumbnail">
  </div>
  <div class="col-md-6">
    <h2><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
</h2>
    <p>售價：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_price'];?>
元整</p>
    <p>人氣：<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_counter'];?>
</p>
    <div>
      <a href="index.php?op=add_to_cart&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
&goods_title=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
&goods_amount=1" class="btn btn-primary" role="button">加入購物車</a>
      <?php if ($_smarty_tpl->tpl_vars['isAdmin']->value) {?>
        <a href="tool.php?op=goods_form&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-warning">編輯商品</a>
        <a href="tool.php?op=delete_goods&goods_sn=<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
" class="btn btn-danger">刪除商品</a>
      <?php }?>
    </div>
  </div>
</div>


<ul class="nav nav-tabs">
  <li role="presentation" class="active"><a href="#goods" aria-controls="goods" role="tab" data-toggle="tab">商品介紹</a></li>
  <li role="presentation"><a href="#note" aria-controls="note" role="tab" data-toggle="tab">退換或須知</a></li>
  <li role="presentation"><a href="#service" aria-controls="service" role="tab" data-toggle="tab">售後服務</a></li>
  <li role="presentation"><a href="#other" aria-controls="other" role="tab" data-toggle="tab">特別說明</a></li>
</ul>

<div class="tab-content">
  <div role="tabpanel" class="tab-pane active" id="goods">
    <h3>商品介紹</h3>
    <p><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_content'];?>
</p>
  </div>
  <div role="tabpanel" class="tab-pane" id="note">
    <h3>退換貨須知</h3>
    <ul>
      <span class="text-danger">注意！本產品不接受退換貨，即售出無退換貨服務</span>
    </ul>
  </div>
  <div role="tabpanel" class="tab-pane" id="service">
    <h3>售後服務</h3>
    <ul>
      <li>如您收到商品，請依正常程序儘速檢查商品並錄影，若商品發生沉澱之情形，純屬正常。</li>
      <li>若商品發生包裝遭破壞之情形，請直接播打下方電話，並將影片寄到下方的電子信箱，將會有專人為您服務。</li>
    </ul>
  </div>
  <div role="tabpanel" class="tab-pane" id="other">
    <h3>特別說明</h3>
    <ul>
      <li>本公司對於所販售具遞延性之商品或服務，消費者權益均受保障。如因合作廠商無法提供商品或服務，請與本公司聯繫辦理退貨或換成等值商品。</li>
      <li>※特惠商品，不適用折價券</li>
    </ul>
  </div>
</div>

<?php }
}
