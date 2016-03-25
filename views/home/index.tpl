<?php

echo $home['titre'].html::br();
echo $home['help'];


foreach ($main_categ as $key => $value) {
	$div_content = html::img('src="'.IMG.'category.ico" height="16" width="16"').' '.$value['nom'];
	$div_content .= html::div($value['nb_sujets'].' sujet(s)', 'class="info_categorie1"');
	//si catégories enfants
	foreach ($main_categ[$key]['categ_filles'] as $key2 => $value2) {
		$tmp_div_content = html::img('src="'.IMG.'category.ico" height="16" width="16"').' '.$value2['nom'];
		$tmp_div_content .= html::div($value2['nb_sujets'].' sujet(s)', 'class="info_categorie2"');
		$tmp_div_content = html::div($tmp_div_content, 'class="categorie2"');
		$tmp_div_content = html::div($tmp_div_content, 'class="box_categorie2"');
		$div_content .= html::a($tmp_div_content, 'href="'.WEBROOT.'home/categorie/'.$value2['id'].'"');
	}
	//si sujets enfants
	foreach ($main_categ[$key]['sujets_fils'] as $key2 => $value2) {
		$tmp_div_content = html::img('src="'.IMG.'post.ico" height="16" width="16"').' '.$value2['titre'];
		$tmp_div_content .= html::div('par : '.$value2['pseudo'].', '.$value2['creation'].' - '.$value2['nbMessages'], 'class="info_sujet1"');
		$tmp_div_content = html::div($tmp_div_content, 'class="sujet1"');
		$tmp_div_content = html::div($tmp_div_content, 'class="box_sujet1"');
		$div_content .= html::a($tmp_div_content, 'href="'.WEBROOT.'home/sujet/'.$value2['id'].'"');
	}
	//
	$div_content = html::div($div_content, 'class="categorie1"');
	$div_content = html::div($div_content, 'class="box_categorie1"');
	echo html::a($div_content, 'href="'.WEBROOT.'home/categorie/'.$value['id'].'"');

}

?>

