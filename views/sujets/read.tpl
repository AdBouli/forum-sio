<?php

//datas
echo 'Titre : ' . $reader['titre'] . html::br(2);
echo html::tag('i',$reader['contenu']) . html::br(2);

//lien vers sa catégorie
echo  "Catégorie : ";
if(isset($reader['categorie_id'])){
	$id = $reader['categorie_id'];
	echo html::a($reader['titre_categorie'], 'href='.WEBROOT.'categories/read/'.$id);
}else{
	echo "aucune";
}
echo html::br();

//lien vers son auteur
echo "Écrit par : ";
if(isset($reader['utilisateur_id'])){
	$id = $reader['utilisateur_id'];
	echo html::a($reader['nom_utilisateur'].' '.$reader['prenom_utilisateur'], 'href='.WEBROOT.'utilisateurs/read/'.$id);
}else{
	echo "aucun auteur";
}

//bouttons
$id = $reader['id'];
echo html::br(2);
//modifier
echo html::a(html::input('type="button" value="Modifier"'), 'href="'.WEBROOT.'sujets/update/'.$id.'"');
//supprimer
echo html::a(html::input('type="button" value="Supprimer"'), 'href="'.WEBROOT.'sujets/delete/'.$id.'"');
echo html::br(2);

//dernier message:
if($reader['last_msg']!=false && $reader['last_msg']['utilisateur_id']!=0){
	echo 'Dernier message : ';
	$id = $reader['last_msg']['id'];
	$link = html::tag('u', 'écrit par '.$reader['nom_utilisateur_last_msg'].' '.$reader['prenom_utilisateur_last_msg'].' le '.$reader['date_created_last_msg'].' à '.$reader['heure_created_last_msg']);
	echo html::a($link, 'href="'.WEBROOT.'messages/read/'.$id.'"');

}else{
	echo "Aucun message sur ce sujet.";
}




?>