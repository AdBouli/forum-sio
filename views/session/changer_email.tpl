<?php


if(isset($msg)){
	echo $msg;
}else{
	echo html::css('
		input, select{
			margin-bottom:5px;
		}
	');
	$content_form = html::input('type="password" name="password" placeholder="Mot de passe" required').html::br();
	$content_form .= html::input('type="text" name="mail" placeholder="Nouveau mail" required').html::br();
	$content_form .= html::input('type="submit" value="Valider"');
	$div_content = html::form($content_form, 'action="'.WEBROOT.'session/changer_email" method="POST"');
	echo html::div($div_content, 'class="admin_create"');

}

?>