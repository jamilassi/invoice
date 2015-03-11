<?php if( !defined('OK') ){ exit(); } 

$mysqli= new mysqli(DB_HOST,DB_USER,DB_PASS,DB_NAME);


if ($mysqli->connect_error) {
    die('Connect Error (' . $mysqli->connect_errno . ') '
            . $mysqli->connect_error);
}
