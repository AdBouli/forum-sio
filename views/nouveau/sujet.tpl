<?php

if(isset($msg)){
	echo html::css($css);
	echo html::span($msg, 'class="msg"');
}else{
	echo html::css('
		input, select{
			margin-bottom:5px;
		}
	');
	echo html::tag('b', '<font size="5">Nouveau sujet :</font>').html::br();
	$form_content = "Catégorie : ";
	$form_content .= html::select($list_categ, 'name="categorie_id" required', $id_categ).html::br();
	$form_content .= html::input('type="text" name="titre" placeholder="Titre" required').html::br();
	$form_content .= html::textarea(null, 'name="contenu" placeholder="Contenu..." cols="48" rows="6" required').html::br();
	$form_content .= html::input('type="submit" value="Déposer sujet"');
	$div_content = html::form($form_content, 'action="'.WEBROOT.'nouveau/sujet/'.$id_categ.'" method="POST"');
	$div_content = html::div($div_content, 'class="client_create"');
	$div_content = html::div($div_content, 'class="categorie1"');
	echo html::div($div_content, 'class="box_categorie1"');
}

?>