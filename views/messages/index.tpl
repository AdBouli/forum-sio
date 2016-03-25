<?php

//boutton nouveau message
echo html::a(html::input('type="button" value="nouveau message"'), 'href="'.WEBROOT.'messages/create"');
echo html::br(2);

//affichage de tous les messages
foreach ($admin['rows'] as $key => $post) {
	echo html::a($post['contenu'], 'href="'.WEBROOT.'messages/read/'.$post['id'].'"');
	echo html::br();
}

?>