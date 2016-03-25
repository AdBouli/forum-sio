<?php

function prvar($var){
	echo '<pre>';
	print_r($var);
	echo '</pre>';
}



function tri_bulle(&$tableau)
{
  $taille = count($tableau);
  for($i = 1; $i < $taille; $i++)
  {
    for($j = $taille-1; $j >= $i; $j--)
    {
      if($tableau[$j+1] > $tableau[$j])
      {
      $temp = $tableau[$j+1];
      $tableau[$j+1] = $tableau[$j];
      $tableau[$j] = $temp;
      }
    }
  }
}


?>