<?php



if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
}
echo html::css('
	input, select{
		margin-bottom:5px;
	}
');

if(!$checking){
	$content_form = html::input('type="text" placeholder="Nom" name="nom" value="'.$restore['nom'].'" size="32"').html::br();
	$content_form .= html::input('type="text" placeholder="Prénom" name="prenom" value="'.$restore['prenom'].'" size="32"').html::br();
	$content_form .= html::select($sexe_list, 'name="sexe"').html::br();
	$content_form .= html::span("ex: 1990-12-31 ", 'class="admin_examples"');
	$content_form .= html::input('type="text" placeholder="Date de naissance" name="dateNaiss" value="'.$restore['dateNaiss'].'" size="32"').html::br();
	$content_form .= html::input('type="text" placeholder="Adresse mail" name="mail" value="'.$restore['mail'].'" size="32" required').html::br();
	$content_form .= html::span("(pseudo) ", 'class="admin_examples"');
	$content_form .= html::input('type="text" placeholder="Identifiant de connexion" name="login" value="'.$restore['login'].'" size="32" required').html::br();
	$content_form .= html::input('type="password" id="pw1" placeholder="Mot de passe" name="password" size="32" required').html::br();
	$content_form .= html::input('type="password" id="pw2" placeholder="Confirmer..." name="password_confirm" size="32" required').html::br();
	$content_form .= html::input('type="submit" id="submit" value="'."S'inscrire".'"');
	$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'session/signin"');
	echo html::div($content_div, 'class="admin_create"');
}




?>