<?php 

namespace App\Helpers;

class CheckValue 
{
    public static function checkvalue($params)
 	{
 		return empty($params) ? false : true;
 	}
}