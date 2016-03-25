<div id='nav_bar'>

	<a href="<?php echo WEBROOT;?>">
		<div id='nav_bar_home'>
			<div id='nav_bar_home_element'>
				FORUM - SIO
			</div>
		</div>
	</a>

	<div id='nav_bar_menu'>

		<a href="<?php echo WEBROOT;?>">
			<div id='nav_bar_menu_element'>
				<div id='nav_bar_menu_element_element'>
					Accueil
				</div>
			</div>
		</a>

		<a href="<?php echo WEBROOT;?>nouveau/sujet">
			<div id='nav_bar_menu_element'>
				<div id='nav_bar_menu_element_element'>
					Nouveau Sujet
				</div>
			</div>
		</a>
<?php
if(isset($_SESSION['user'])){
	if($_SESSION['user']['pseudo']=='root'){
		$element_menu = html::div('Administration', 'id="nav_bar_menu_element_element"');
		$element_menu = html::div($element_menu, 'id="nav_bar_menu_element"');
		echo html::a($element_menu, 'href="'.WEBROOT.'admin"');
	}
}
?>
		<!-- <a href="<?php echo WEBROOT;?>admin">
			<div id='nav_bar_menu_element'>
				<div id='nav_bar_menu_element_element'>
					Administration
				</div>
			</div>
		</a> -->
	</div>

	<div id='nav_bar_user'>
		<div id='nav_bar_user_element'>
			<?php
			if(isset($_SESSION['user'])){
				$div_content = html::a('Mon compte', 'href="'.WEBROOT.'session/home/"');
				$div_content .= ' - ';
				$div_content .= html::a('Déconnexion', 'href="'.WEBROOT.'session/logout"');
				echo $div_content;
			}else{
				$div_content = html::a("Connexion", 'href="'.WEBROOT.'session/login"');
				$div_content .= ' - ';
				$div_content .= html::a('Inscription', 'href="'.WEBROOT.'session/signin"');
				echo $div_content;
			}

			?>
		</div>
	</div>

</div>