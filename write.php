<?php
$date = $_POST['date'];
$emotionOption = $_POST['emotionOption'];
$emotionScale = $_POST['emotionScale'];
$color = $_POST['color'];
$situation = $_POST['situation'];

$color = substr($color, 1);
$red = hexdec(substr($color, 0, 2));
$green = hexdec(substr($color, 2, 2));
$blue = hexdec(substr($color, 4, 2));

// 既存のデータを読み込む
$existingData = file_get_contents('data/data.json');
$existingDataArray = json_decode($existingData, true);

// 日付から日付部分のみを取り出す
$dateParts = explode("-", $date);
$day = $dateParts[2];

// 新しいデータを連想配列として保存
$newData = array(
    "date" => $date,
    "day" => $day * 16, //日付の１６倍
    "emotion" => $emotionOption,
    "scale" => $emotionScale,
    "color" => "#" . sprintf("%02x%02x%02x", $red, $green, $blue),
    "situation" => $situation
);

if (!$existingDataArray) {
    $existingDataArray = [];
}

// 既存のデータと新しいデータをマージ
$mergedDataArray = array_merge($existingDataArray, array($newData));

// 連想配列をJSON形式に変換して保存
$jsonData = json_encode($mergedDataArray, JSON_UNESCAPED_UNICODE);
file_put_contents('data/data.json', $jsonData);

header("Location: index.php");
exit();
?>
