<?php

//lien vers le sujet
echo 'Sujet : ';
if(isset($reader['id_sujet'])){
	$id = $reader['id_sujet'];
	echo html::a($reader['titre_sujet'], 'href="'.WEBROOT.'sujets/read/'.$id.'"');
}else{
	echo "aucun";
}
echo html::br();

//contenu
echo html::tag('i', $reader['contenu']);
echo html::br();

//lien vers l'auteur
echo 'écrit par : ';
if(isset($reader['id_utilisateur'])){
	$id = $reader['id_utilisateur'];
	echo html::a($reader['prenom_utilisateur'].' '.$reader['nom_utilisateur'], 'href="'.WEBROOT.'utilisateurs/read/'.$id.'"');
}else{
	echo "aucun auteur";
}

//bouttons
$id = $reader['id'];
echo html::br(2);
//modifier
echo html::a(html::input('type="button" value="Modifier"'), 'href="'.WEBROOT.'messages/update/'.$id.'"');
//supprimer
echo html::a(html::input('type="button" value="Supprimer"'), 'href="'.WEBROOT.'messages/delete/'.$id.'"');
?>