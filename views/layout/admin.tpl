<?xml version="1.0" encoding="UTF-8"?> 
<!DOCTYPE html       PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="fr" lang="fr">

<head>

	<title>Forum SIO</title>	
	<link rel="icon" type="image/png" href="<?php echo IMG;?>web_tab.ico"/>
	<link href="<?php echo CSS;?>styles.css" rel="stylesheet" media="all" type="text/css"/>
	<link href="<?php echo CSS;?>admin.css" rel="stylesheet" media="all" type="text/css"/>
	<link href="" rel="stylesheet" media="all" type="text/css"/> 
	<script type="text/javascript" src='JS/jquery.js'></script>

</head>

<body>

<div id='main'>

	<div id='box_top'>

		<?php include(VIEW.'layout/includes/nav_bar.tpl'); ?>

	</div>

	<div id='box_main'>

		<div id='box_menu'>

			<div id='menu'>

				<ul style='list-style-type:none'>
					<a href="<?php echo WEBROOT;?>sujets"><li>Sujets</li></a>
					<a href="<?php echo WEBROOT;?>messages"><li>Messages</li></a>
					<a href="<?php echo WEBROOT;?>utilisateurs"><li>Utilisateurs</li></a>
					<a href="<?php echo WEBROOT;?>categories"><li>Catégories</li></a>
				</ul>

			</div>

		</div>

		<div id='box_content'>

			<div id='content'>

				<?php echo $content_for_layout; ?>

			</div>

		</div>

		<div id='box_flux'>

			<div id='flux'>

				<?php
					if(isset($_SESSION['user']['pseudo'])){
						echo "Bonjour ".$_SESSION['user']['pseudo'].html::br();
					}
				?>

			</div>

		</div>

	</div>

</div>

</body>

</html>