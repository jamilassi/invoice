<?php if( !defined('OK') ){ exit(); }


// GENERAL
define('APP_NAME', "PHP Site");


// MYSQL
define('DB_HOST', 'localhost');
define('DB_USER', 'root');
define('DB_PASS', 'root');
define('DB_NAME', 'company');


// GLOBALS
$lang       = 'en';
$now        = date("Y/m/d");
$filename   = ltrim($_SERVER['SCRIPT_NAME'],'/');