<?php
$data = file_get_contents('data/data.json');
echo nl2br($data);

ini_set('display_errors', 1);

?>