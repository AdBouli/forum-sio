<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}else{

	echo html::tag('h3', "Modification du message: ");

	echo html::css('
		input, select{
			margin-bottom:5px;
		}
	');

	//sujet
	$content_form = html::select($updater['select_sujet'], 'name="sujet_id" required', $updater['sujet_id']).html::br();
	//contenu
	$content_form .= html::textarea($updater['contenu'], 'name="contenu" cols="48" rows="6" required').html::br();
	//utilisateur
	$content_form .= html::select($updater['select_utilisateur'], 'name="utilisateur_id" required', $updater['utilisateur_id']).html::br();
	//valider
	$content_form .= html::input('type="submit" value="Modifier"');

	$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'messages/update/'.$updater['id'].'"');
	echo html::div($content_div, 'class="admin_create"');

}//end else





?>