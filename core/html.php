<?php

class html {

	//GENERAL
	static function div($content, $opt=null){
		return "<div $opt>$content</div>";
	}

	static function a($content, $opt=null){
		return "<a $opt>$content</a>";
	}

	static function br($n = 1){
		$br = '';
		if($n>0){
			for($i=1; $i<=$n; $i++){
				$br .= "<br>";
			}
		}
		return $br;
	}

	//FORMULAIRE

	static function form($content, $opt=null){
		return "<form $opt>$content</form>";
	}

	static function input($opt=null){
		return "<input $opt>";
	}

	static function select($list, $opt=null, $selected=null){
		return "<select $opt>".html::option($list, $selected)."</select>";
	}

	static function option($list, $selected){
		$option = "";
		foreach ($list as $key => $value) {
			if($key==$selected){
				$option .= "<option value='$key' selected>" . $value . '</option>';
			}else{
				$option .= "<option value='$key' >" . $value . '</option>';
			}
		}
		return $option;
	}

	static function textarea($content, $opt=null){
		return "<textarea $opt>$content</textarea>";
	}

	//TABLEAU

	static function table($content, $opt=null){
		return "<table $opt>$content</table>";
	}

	static function tr($content, $opt=null){
		return "<tr $opt>$content</tr>";
	}

	static function th($content, $opt=null){
		return "<th $opt>$content</th>";
	}

	static function td($content, $opt=null){
		return "<td $opt>$content</td>";
	}

	//CSS
	static function css($style=null){
		echo "<style type='text/css'>$style</style>";
	}

	//JavaScript
	static function script($script=null){
		echo "<script type='text/javascript'>$script</script>";
	}

	//LISTE
	static function tolist($list, $type, $style=null){
		$html_list = '';
		foreach ($list as $url => $value) {
			if(is_array($value)){
				$row = html::tolist($value, $type, $style);
			}else{
				$row = $value;
			}
			$html_list .= html::a(html::li($row), "href='$url'");
		}
		switch($type){
			case 'ol':
				$html_list = html::ol($html_list, "type='$style'");
				break;
			case 'ul':
				$html_list = html::ul($html_list, "style='list-style-type:$style'");
				break;
			default:
				$html_list = html::ul($html_list, "style='list-style-type:none'");
				break;
		}
		return $html_list;

	}
	
	static function ol($content, $opt=null){
		return "<ol $opt>$content</ol>";
	}
	
	static function ul($content, $opt=null){
		return "<ul $opt>$content</ul>";
	}
	
	static function li($content, $opt=null){
		return "<li $opt>$content</li>";
	}

	//AUTRES
	static function span($content, $opt=null){
		return "<span $opt>$content</span>";
	}
	
	static function tag($tag, $content, $opt=null){
		return "<$tag $opt>$content</$tag>";
	}

	static function img($opt=null){
		return "<img $opt>";
	}




	

}



?>