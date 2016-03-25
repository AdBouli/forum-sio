<?php
//datas
echo 'Nom : ' . $reader['nom'] . html::br();
echo 'Prénom : ' . $reader['prenom'] . html::br();
echo 'Sexe : ' . $reader['sexe'] . html::br();
echo 'Mail : ' . $reader['mail'] . html::br();
echo 'Identifiant : ' . $reader['login'] . html::br();

//stats
echo html::br();
echo "Nombre de sujet(s) posté(s): ".$reader['nbposts'];
echo html::br();
echo "Nombre de message(s) posté(s): ".$reader['nbmsgs'];

//bouttons
$id = $reader['id'];
echo html::br(2);
//modifier
echo html::a(html::input('type="button" value="Modifier"'), 'href="'.WEBROOT.'utilisateurs/update/'.$id.'"');
//supprimer
echo html::a(html::input('type="button" value="Supprimer"'), 'href="'.WEBROOT.'utilisateurs/delete/'.$id.'"');

?>