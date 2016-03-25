<?php

//boutton nouveau sujet
echo html::a(html::input('type="button" value="nouveau sujet"'), 'href="'.WEBROOT.'sujets/create"');
echo html::br(2);

//affichage de tous les sujets
foreach ($admin['rows'] as $key => $value) {
	echo html::a($value['titre'], 'href="'.WEBROOT.'sujets/read/'.$value['id'].'"');
	echo "  -  dans : ".$value['nom_categ'];
	echo html::br();
	echo $value['contenu'];
	echo html::br(2);
}

?>