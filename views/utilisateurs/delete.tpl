<?php

if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}else{
	echo "Êtes-vous sûr de vouloir supprimer l'utilisateur ".$deleter['prenom'].' '.$deleter['nom']." ?";

	$content_form = html::input('type="hidden" name="input_for_checking"');
	$content_form .= html::input('type="submit" value="Oui"');
	$content_form .= html::a(html::input('type="button" value="Non"'), 'href="'.WEBROOT.'utilisateurs/read/'.$deleter['id'].'"');

	echo html::form($content_form, 'action="'.WEBROOT.'utilisateurs/delete/'.$deleter['id'].'" method="POST"');
	
}


?>