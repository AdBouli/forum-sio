<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}

echo html::tag('h3', "Nouveau sujet:");

echo html::css('
	input, select, textarea{
		margin-bottom:5px;
	}
');

//titre
$content_form = html::input('type="text" placeholder="Titre" name="titre" size="32" required').html::br();
//contenu
$content_form .= html::textarea(null, 'placeholder="Contenu..." name="contenu" cols="48" rows="6" required').html::br();
//categorie
$content_form .= "Catégorie : ";
$content_form .= html::select($create['select_categorie'], 'name="categorie_id"').html::br();
//utilisateur
$content_form .= "Utilisateur : ";
$content_form .= html::select($create['select_utilisateur'], 'name="utilisateur_id" required').html::br();
//valider
$content_form .= html::input('type="submit" value="Créer sujet"');

$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'sujets/create"');
echo html::div($content_div, 'class="admin_create"');

?>