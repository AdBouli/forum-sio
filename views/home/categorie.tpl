<?php

//chemin
foreach ($chemin as $key => $value) {
	echo html::a($value, 'href="'.WEBROOT.'home/categorie/'.$key.'"').' > ';
}

echo html::div(
	html::div(
		html::a(
			html::input('type="button" value="Créer sujet"'),
		'href="'.WEBROOT.'nouveau/sujet/'.$id_categ.'"'),
	'class="boutton_repondre"'),
'class="box_boutton_repondre"');

$div_content = '';
//si categories enfants
foreach ($sous_categ as $key => $value) {
	$tmp_div_content = html::img('src="'.IMG.'category.ico" height="16" width="16"').' '.$value['nom'];
	$tmp_div_content .= html::div($value['nb_sujets'].' sujet(s)', 'class="info_categorie2"');
	$tmp_div_content = html::div($tmp_div_content, 'class="categorie2"');
	$tmp_div_content = html::div($tmp_div_content, 'class="box_categorie2"');
	$div_content .= html::a($tmp_div_content, 'href="'.WEBROOT.'home/categorie/'.$value['id'].'"');
}
//si sujets enfants
foreach ($sous_sujet as $key => $value) {
	$tmp_div_content = html::img('src="'.IMG.'post.ico" height="16" width="16"').' '.$value['titre'];
	$tmp_div_content .= html::div('par : '.$value['pseudo'].', '.$value['creation'], 'class="info_sujet1"');
	$tmp_div_content = html::div($tmp_div_content, 'class="sujet1"');
	$tmp_div_content = html::div($tmp_div_content, 'class="box_sujet1"');
	$div_content .= html::a($tmp_div_content, 'href="'.WEBROOT.'home/sujet/'.$value['id'].'"');
}
//
$div_content = html::div($div_content, 'class="categorie1"');
echo html::div($div_content, 'class="box_categorie1"');


?>