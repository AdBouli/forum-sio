<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	html::br(2);
}else{

	echo html::tag('h3', "Modification de l'utilisateur: ".$updater['prenom'].' '.$updater['nom']);

	echo html::css('
		input, select{
			margin-bottom:5px;
		}
	');


	$content_form = html::input('type="text" value="'.$updater['nom'].'" placeholder="Nom" name="nom" size="32"').html::br();
	$content_form .= html::input('type="text" value="'.$updater['prenom'].'" placeholder="Prénom" name="prenom" size="32"').html::br();
	$content_form .= html::select($sexe_list, 'name="sexe"', $updater['sexe']).html::br();
	$content_form .= html::span("ex: 1990-12-31", 'class="admin_examples"');
	$content_form .= html::input('type="text" value="'.$updater['dateNaiss'].'" placeholder="Date de naissance" name="dateNaiss" size="32"').html::br();
	$content_form .= html::input('type="text" value="'.$updater['mail'].'" placeholder="Adresse mail" name="mail" size="32" required').html::br();
	$content_form .= html::span('(pseudo) ', 'class="admin_examples"');
	$content_form .= html::input('type="text" value="'.$updater['login'].'" placeholder="Identifiant de connexion" name="login" size="32" required').html::br();

	$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'utilisateurs/update/'.$updater['id'].'"');
	echo html::div($content_div, 'class="admin_create"');


}//end else





?>