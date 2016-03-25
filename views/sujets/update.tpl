<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}else{

	echo html::tag('h3', "Modification du sujet: ".$updater['titre']);

	echo html::css('
		input, select, textarea{
			margin-bottom:5px;
		}
	');

	//titre
	$content_form = html::input('type="text" value="'.$updater['titre'].'" placeholder="Titre" name="titre" size="32" required').html::br();
	//contenu
	$content_form .= html::textarea($updater['contenu'], 'placeholder="Contenu..." name="contenu" cols="48" rows="6" required').html::br();
	//categorie
	$content_form .= "Catégorie : ";
	$content_form .= html::select($updater['select_categorie'], 'name="categorie_id"', $updater['categorie_id']).html::br();
	//utilisateur
	$content_form .= "Utilisateur : ";
	$content_form .= html::select($updater['select_utilisateur'], 'name="utilisateur_id" required', $updater['utilisateur_id']).html::br();
	//valider
	$content_form .= html::input('type="submit" value="Modifier sujet"');

	$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'sujets/update/'.$updater['id'].'"');
	echo html::div($content_div, 'class="admin_create"');

}//end else





?>