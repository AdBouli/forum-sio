<?php

//boutton nouvel utilisateur
echo html::a(html::input('type="button" value="nouvel utilisateur"'), 'href="'.WEBROOT.'utilisateurs/create"');
echo html::br(2);

//affichage de tous les utilisateurs
foreach ($admin['rows'] as $key => $post) {
	echo html::a($post['login'].' - '.$post['nom'].' '.$post['prenom'], 'href="'.WEBROOT.'utilisateurs/read/'.$post['id'].'"');
	echo html::br();
}

?>