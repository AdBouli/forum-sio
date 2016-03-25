<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE html       PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<head>

	<title>Forum SIO</title>	
	<link rel="icon" type="image/png" href="<?php echo IMG;?>web_tab.ico"/>
	<link href="<?php echo CSS;?>styles.css" rel="stylesheet" media="all" type="text/css"/>
	<link href="" rel="stylesheet" media="all" type="text/css"/> 
	<script type="text/javascript" src='JS/jquery.js'></script>

</head>

<body>

<div id='main'>

	<div id='box_top'>

		<?php include(VIEW.'layout/includes/nav_bar.tpl'); ?>

	</div>

	<div id='box_main'>

		<div id='box_content'>

			<div id='content'>

				<?php echo $content_for_layout; ?>

			</div>

		</div>

		<div id='box_flux'>

			<div id='flux'>

				<?php
					if(isset($_SESSION['user']['pseudo'])){
						echo "Bonjour ".$_SESSION['user']['pseudo'].html::br(2);
					}

					require_once(MODL.'sujets.mdl');
					$sujets = new sujetsModel();
					$posts = $sujets->getLastPosts("10");
					echo html::tag('b', 'Derniers sujets :').html::br(2);
					foreach ($posts as $key => $value) {
						//titre
						if(strlen($value['titre'])>=20){
							$value['titre'] = mb_strcut($value['titre'], 0, 19, "UTF-8").'...';
						}
						$sujet = html::a($value['titre'], 'href="'.WEBROOT.'home/sujet/'.$value['id'].'"');
						//categorie
						if(strlen($value['categorie'])>=14){
							$value['categorie'] = mb_strcut($value['categorie'], 0, 13, "UTF-8").'...';
						}
						$sujet .=html::br()."dans : ".$value['categorie'];
						echo $sujet.html::br(2);
					}
				?>

			</div>

		</div>

	</div>

</div>

</body>

</html>