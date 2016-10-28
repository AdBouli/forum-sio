<?php
class Controller {

	var $vars = array();
	var $models = array();
	var $layout = 'default';
	var $post;

	function __construct(){
	}

	function set($data){
		$this->vars = array_merge($this->vars, $data);
	}

	function render($filename){
		$view = VIEW.strtolower(get_class($this)).'/'.$filename.'.tpl';
		if(file_exists($view)){
			extract($this->vars);
			ob_start();
			require_once($view);
			$content_for_layout = ob_get_clean();
			if($this->layout == false){
				echo $content_for_layout;
			}else {
				if(file_exists(VIEW.'layout/'.strtolower($this->layout).'.tpl')){
					require_once(VIEW.'layout/'.strtolower($this->layout).'.tpl');
				}else{
					echo 'Layout "'. $this->layout .'" introuvable.';
				}
			}
		}else{
			echo 'Vue "'. strtolower($filename) .'" introuvable.';
		}
	}
		

	function loadModel($name, $id = null){
		require_once(MODL.strtolower($name).'.mdl');
		$class = $name.'Model';
		$this->models[$name] = new $class($id);
	}

	//formate un 'yyy-mm-dd hh:mm:ss' en 'dd-mm-yyy'
	function formatdate($date){
		return $date[8].$date[9].'/'.$date[5].$date[6].'/'.$date[0].$date[1].$date[2].$date[3];
	}

	//formate un 'yyy-mm-dd hh:mm:ss' en 'hh:mm'
	function formatheure($date){
		return $date[11].$date[12].'h'.$date[14].$date[15];
	}

}


?>