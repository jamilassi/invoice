<?php if( !defined('OK') ){ exit(); } ?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title><?php echo APP_NAME ?></title>
    
    <link href="css/normalize.css" rel="stylesheet" type="text/css"> 
    
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css"> 
    
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css"> 
    
    <link href="css/style.css" rel="stylesheet" type="text/css">
    
    <script>var SCRIPT_NAME="<?php echo $filename; ?>"</script>
</head>

<body class="<?php echo rtrim($filename,".php"); ?>">
