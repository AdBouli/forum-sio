<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}

echo html::tag('h3', "Nouvelle catégorie:");

echo html::css('
	input, select{
		margin-bottom:5px;
	}
');

//nom
$content_form = html::input('type="text" placeholder="Nom" name="nom" size="32" required').html::br();
//description
$content_form .= html::textarea(null, 'placeholder="description..." name="description" cols="48" rows="6" required').html::br();
//categorie parente
$content_form .= "Catégorie parente : ";
$content_form .= html::select($create['select_categorie'], 'name="categorie_id"').html::br();
//ordre
$content_form .= "Classement : ";
$content_form .= html::input('type="text" placeholder="n°" name="classement" size="5"').html::br();
//valider
$content_form .= html::input('type="submit" value="Créer catégorie"');

$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'categories/create"');
echo html::div($content_div, 'class="admin_create"');

?>