<?php

echo html::tag('h3', 'Statistiques générales : ');

echo $general['nb_sujets']." sujets.".html::br();
echo $general['nb_msg']." messages.".html::br();
echo $general['nb_categ']." catégories.".html::br();
echo $general['nb_users']." utilisateurs";
echo " - dont ".$general['nb_users_online']." en ligne.";


?>