<?php

if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}

echo html::tag('h3', "Nouveau message:");

echo html::css('
	input, select, textarea{
		margin-bottom:5px;
	}
');

//sujet
$content_form = "Sujet : ";
$content_form .= html::select($create['select_sujet'], 'name="sujet_id" required').html::br();
//contenu
$content_form .= html::textarea(null, 'placeholder="Contenu..." name="contenu" cols="48" rows="6" required').html::br();
//utilisateur
$content_form .= "Utilisateur : ";
$content_form .= html::select($create["select_utilisateur"], 'name="utilisateur_id" required').html::br();
//valider
$content_form .= html::input('type="submit" value="Créer message"');

$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'messages/create"');
echo html::div($content_div, 'class="admin_create"');

?>