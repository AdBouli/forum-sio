<?php

//
$div_content = html::tag('h4', $sujet['titre']);
$div_content .= html::tag('p', $sujet['contenu']);
$div_content = html::div($div_content, 'class="categorie1"');
echo html::div($div_content, 'class="box_categorie1"');
if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
}else{
	echo html::tag('b', '<font size="5">Répondre :</font>').html::br();
	$form_content = html::textarea(null, 'name="contenu" placeholder="Réponse..." cols="48" rows="6" required').html::br();
	$form_content .= html::input('type="submit" value="Envoyé"');
	$div_content = html::form($form_content, 'action="'.WEBROOT.'nouveau/message/'.$sujet['id'].'" method="POST"');
	$div_content = html::div($div_content, 'class="client_create"');
	$div_content = html::div($div_content, 'class="categorie1"');
	echo html::div($div_content, 'class="box_categorie1"');
}

?>