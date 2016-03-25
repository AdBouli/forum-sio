<?php
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
	echo html::br(2);
}

echo html::tag('h3', "Nouvel utilisateur:");

echo html::css('
	input, select{
		margin-bottom:5px;
	}
');


$content_form = html::input('type="text" placeholder="Nom" name="nom" size="32"').html::br();
$content_form .= html::input('type="text" placeholder="Prénom" name="prenom" size="32"').html::br();
$content_form .= html::select($sexe_list, 'name="sexe"').html::br();
$content_form .= html::span("ex: 1990-12-31 ", 'class="admin_examples"');
$content_form .= html::input('type="text" placeholder="Date de naissance" name="dateNaiss" size="32"').html::br();
$content_form .= html::input('type="text" placeholder="Adresse mail" name="mail" size="32" required').html::br();
$content_form .= html::span("(pseudo) ", 'class="admin_examples"');
$content_form .= html::input('type="text" placeholder="Identifiant de connexion" name="login" size="32" required').html::br();
$content_form .= html::input('type="password" placeholder="Mot de passe" name="password" size="32" required').html::br();
$content_form .= html::input('type="submit" value="Créer utilisateur"');

$content_div = html::form($content_form, 'method="POST" action="'.WEBROOT.'utilisateurs/create"');
echo html::div($content_div, 'class="admin_create"');


?>