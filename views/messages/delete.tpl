<?php

if(isset($msg)){
	echo html::css($css);
	echo html::span($msg , 'class="msg"');
	echo html::br(2);
}else{
	echo "Êtes-vous sûr de vouloir supprimer le message ?";

	$content_form = html::input('type="hidden" name="input_for_checking"');
	$content_form .= html::input('type="submit" value="Oui"');
	$content_form .= html::a(html::input('type="button" value="Non"'), 'href="'.WEBROOT.'messages/read/'.$deleter['id'].'"');

	echo html::form($content_form, 'action="'.WEBROOT.'messages/delete/'.$deleter['id'].'" method="POST"');
}


?>