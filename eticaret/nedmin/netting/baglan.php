<?php 

try {

	$db=new PDO("mysql:host=localhost;dbname=eticaret;charset=utf8",'root','0702665666');

	//echo "Veritabanı bağlantısı başarılı";

} catch (PDOExpception $e) {

	echo $e->getMessage();
}


?>