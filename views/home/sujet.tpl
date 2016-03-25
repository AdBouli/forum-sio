<?php

//chemin
foreach ($chemin as $key => $value) {
	echo html::a($value, 'href="'.WEBROOT.'home/categorie/'.$key.'"').' > ';
}


$infos = 'par : '.html::a($sujet['pseudo'], 'href="'.WEBROOT.'utilisateur/'.$sujet['id_auteur'].'"').', '.$sujet['creation'];
$div_content = html::div($infos, 'class="info_sujet1"');
$div_content .= html::tag('h4', $sujet['titre']);
$div_content .= html::tag('p', $sujet['contenu']);
$div_content = html::div($div_content, 'class="categorie1"');
echo html::div($div_content, 'class="box_categorie1"');

$bouton_repondre = 
html::div(
	html::div(
		html::a(
			html::input('type="button" value="Répondre"'),
		'href="'.WEBROOT.'nouveau/message/'.$sujet['id'].'"'),
	'class="boutton_repondre"'),
'class="box_boutton_repondre"');

echo $bouton_repondre;

foreach ($msg as $key => $value) {
	$infos = 'par : '.html::a($msg[$key]['pseudo'], 'href="'.WEBROOT.'utilisateur/'.$msg[$key]['id_auteur'].'"').', '.$msg[$key]['creation'];
	$div_content = html::div($infos, 'class="info_sujet1"');
	$div_content .= html::tag('p', $msg[$key]['contenu']);
	$div_content = html::div($div_content, 'class="categorie1"');
	echo html::div($div_content, 'class="box_categorie1"');
}
if(count($msg)>2){
	echo $bouton_repondre;
}
?>