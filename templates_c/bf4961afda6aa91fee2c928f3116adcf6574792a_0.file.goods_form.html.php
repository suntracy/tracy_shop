<?php
/* Smarty version 3.1.29, created on 2020-11-06 06:45:44
  from "C:\UniServerZ\www\tracy_shop-master\templates\goods_form.html" */

if ($_smarty_tpl->smarty->ext->_validateCompiled->decodeProperties($_smarty_tpl, array (
  'has_nocache_code' => false,
  'version' => '3.1.29',
  'unifunc' => 'content_5fa4f11845e933_64835957',
  'file_dependency' => 
  array (
    'bf4961afda6aa91fee2c928f3116adcf6574792a' => 
    array (
      0 => 'C:\\UniServerZ\\www\\tracy_shop-master\\templates\\goods_form.html',
      1 => 1604391034,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5fa4f11845e933_64835957 ($_smarty_tpl) {
?>
<h1>編輯商品</h1>
<?php echo '<script'; ?>
 src="class/ckeditor/ckeditor.js"><?php echo '</script'; ?>
>
<form action="tool.php" method="post" class="form-horizontal" role="form" enctype="multipart/form-data">
    <div class="form-group">
        <label class="col-md-2 control-label">商品名稱：</label>
        <div class="col-md-10">
            <input type="text" class="form-control" name="goods_title" id="goods_title" placeholder="請輸入商品名稱" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
">
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品內容：</label>
        <div class="col-md-10">
            <textarea class="form-control" name="goods_content" id="goods_content" placeholder="請輸入商品內容"><?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_content'];?>
</textarea>
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品價格：</label>
        <div class="col-md-10">
            <input type="text" class="form-control" name="goods_price" id="goods_price" placeholder="請輸入商品價格" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_price'];?>
">
        </div>
    </div>

    <div class="form-group">
        <label class="col-md-2 control-label">商品圖片：</label>
        <div class="col-md-10">
            <input type="file" name="goods_pic" id="goods_pic">
            <?php if (isset($_smarty_tpl->tpl_vars['goods']->value['pic'])) {?>
                <img src="<?php echo $_smarty_tpl->tpl_vars['goods']->value['pic'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_title'];?>
">
            <?php }?>
        </div>
    </div>

    <div class="form-group">
        <div class="col-md-offset-2 col-md-10">
            <?php if (isset($_smarty_tpl->tpl_vars['goods']->value['goods_sn']) && $_smarty_tpl->tpl_vars['goods']->value['goods_sn'] > 0) {?>
                <input type="hidden" name="op" value="update_goods">
                <input type="hidden" name="goods_sn" value="<?php echo $_smarty_tpl->tpl_vars['goods']->value['goods_sn'];?>
">
            <?php } else { ?>
                <input type="hidden" name="op" value="insert_goods">
            <?php }?>
            <button type="submit" class="btn btn-primary">儲存商品</button>
        </div>
    </div>
</form>

<?php echo '<script'; ?>
>
    CKEDITOR.replace( 'goods_content' );
<?php echo '</script'; ?>
>
<?php }
}
