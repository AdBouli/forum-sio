<?php

define('WEBROOT', str_replace('index.php', '', $_SERVER['SCRIPT_NAME']));
define('ROOT', str_replace('index.php', '', $_SERVER['SCRIPT_FILENAME']));

define('CORE', ROOT.'core/');
define('CTRL', ROOT.'controllers/');
define('MODL', ROOT.'models/');
define('VIEW', ROOT.'views/');
//define('DIR_TMPL', ROOT.'template/');
//define('DIR_ADDN', ROOT.'addon/');
define('CONF', ROOT.'conf/');
define('IMG' , WEBROOT.'img/');
define('CSS' , WEBROOT.'core/css/');
define('JS'  , WEBROOT.'core/js/');

require_once(CONF.'database.conf');
require_once(CORE.'model.php');
require_once(CORE.'controller.php');
require_once(CORE.'functions.php');
require_once(CORE.'html.php');

session_start();

$params = explode('/', $_GET['p']);

$controller = @$params[0];
$action = @$params[1];
if(empty($controller)){
	$controller = 'home';
}

if(empty($action)){
	$action = 'index';
}

$ctrl = CTRL.$controller.'.ctrl';
if(file_exists($ctrl)){
	require_once($ctrl);
	$controller = new $controller();
}

if(method_exists($controller, $action)){
	unset($params[0]);
	unset($params[1]);
	call_user_func_array(array($controller,$action), $params);
}else {
	echo "erreur 404";
}

?>