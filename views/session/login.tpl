<?php

if(isset($msg)){
	echo $msg;
}else{
	echo html::css('
		input, select{
			margin-bottom:5px;
		}
	');
	$content_form = html::input('type="text" name="login" placeholder="Pseudo ou email"').html::br();
	$content_form .= html::input('type="password" name ="password" placeholder="Mot de passe"').html::br();
	$content_form .= html::input('type="submit" value="Connexion"');
	$div_content = html::form($content_form, 'action="'.WEBROOT.'session/login" method="POST"');
	echo html::div($div_content, 'class="admin_create"');

}


?>