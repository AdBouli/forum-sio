<?php

//nom
echo "Nom : ".$reader['nom'];
echo html::br();

//catégorie parent
echo 'Catégorie parent : ';
//si présence de catégorie parent
if(isset($reader['id_categorie_parent'])){
	$id = $reader['id_categorie_parent'];
	//lien vers cette catégorie
	echo html::a($reader['nom_categorie_parent'], 'href='.WEBROOT.'categories/read/'.$id);
}else{
	echo "aucune";
}
echo html::br();

//description
echo html::tag('i', $reader['description']);


//bouttons
$id = $reader['id'];
echo html::br(2);
//modifier
echo html::a(html::input('type="button" value="Modifier"'), 'href="'.WEBROOT.'categories/update/'.$id.'"');
//supprimer
echo html::a(html::input('type="button" value="Supprimer"'), 'href="'.WEBROOT.'categories/delete/'.$id.'"');


?>