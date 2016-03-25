<?php

//boutton nouvel catégorie
echo html::a(html::input('type="button" value="nouvelle catégorie"'), 'href="'.WEBROOT.'categories/create"');
echo html::br(2);

//affichage de toutes les catégories
foreach ($admin['rows'] as $key => $post) {
	echo html::a($post['nom'], 'href="'.WEBROOT.'categories/read/'.$post['id'].'"');
	echo html::br();
}

?>