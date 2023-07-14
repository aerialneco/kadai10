<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/index.css">
    <title>Document</title>
</head>

<body>
<header class="header">
  <div class="nav-wrapper">
    <p class="logo">
        <a href="./index.php" class="">
        <img src="./images/logo.jpg" alt="logo" width="70">
        <span class="logoーtext">Grow</span>
        </a>
    </p>
  <nav class="navigation">
    <ul class="nav-list">
    <li><a class="nav-link" href="./registration.php">カウンセラー登録</a></li>
    <li><a class="nav-link" href="./select.php">カウンセラー一覧</a></li>
    </ul>
  </nav>
  </div>
</header>

<div class="container">
<!-- Left content starts -->
<div class="left-content">
    <h1 class="i_title">どんな１日でしたか？</h1>
<form action="write.php" method="post">
    <section>
        <!-- <p>日付を選んでください。</p> -->
    <input type="date" name="date" id="date-input">
    </section>

    <!-- 感情ここから -->
    <section class="emotionOption>
    <p>心に残った気持ちの動きは？</p>
    <input type="radio" name="emotionOption" value="怒り" class="emotion" id="anger"><label class="emotionLabel" for="anger">怒り</label>
    <input type="radio" name="emotionOption" value="悲しみ" class="emotion" id="sorrow"><label class="emotionLabel" for="sorrow">悲しみ</label>
    <input type="radio" name="emotionOption" value="安心" class="emotion" id="relief"><label class="emotionLabel" for="relief">安心</label>
    <input type="radio" name="emotionOption" value="緊張" class="emotion" id="tention"><label class="emotionLabel" for="tention">緊張</label>
    <input type="radio" name="emotionOption" value="喜び" class="emotion" id="joy"><label class="emotionLabel" for="joy">喜び</label>
    <input type="radio" name="emotionOption" value="嫌悪" class="emotion" id="disgust"><label class="emotionLabel" for="disgust">嫌悪</label>
    <input type="radio" name="emotionOption" value="驚き" class="emotion" id="surprise"><label class="emotionLabel" for="surprise">驚き</label>
    <input type="radio" name="emotionOption" value="恐れ" class="emotion" id="fear"><label class="emotionLabel" for="fear">恐れ</label>
    <input type="radio" name="emotionOption" value="恐れ" class="emotion" id="anxiety"><label class="emotionLabel" for="anxiety">不安</label>
    <input type="radio" name="emotionOption" value="幸福" class="emotion" id="happy"><label class="emotionLabel" for="happy">幸福</label>
    </section>
    <!-- 感情ここまで -->

    <!-- スケールここから -->
    <section>
    <label><input type="range" min="0" max="100" step="10" id="scale" name="emotionScale" >気持ちの強さ</label>
    <p id="msg"></p>
    </section>
    <!-- スケールここまで -->

    <!-- カラー ここから-->
    <section>
    <!-- <p>感情を色で表すとどんな色でしょうか？</p> -->
    <!-- <input type="color" value="#rrggbb" name="inputColor"> -->
    <input type="color" name="color" list="color-list"> 気持ちの色
    <datalist id="color-list">
    <option value="#0000CD">
    <option value="#40E0D0">
    <option value="#32CD32">
    <option value="#008000">
    <option value="#6A5ACD">
    <option value="#9370DB">
    <option value="#FFEFD5">
    <option value="#DDA0DD">
    <option value="#FFFFE0">
    <option value="#FF00FF">
    <option value="#FF4500">
    <option value="#FF0000">
    <option value="#000000">
    <option value="#A52A2A">
    <option value="#C0C0C0">
    <option value="#FFD700">
    </datalist>
    </section>
    <!-- カラー ここまで-->

    <!-- 詳細ここから -->
    <section>
    <p>出来事等</p>    
    <textarea name="situation" id="" cols="70" rows="5"></textarea>
    </section>
    <!-- 詳細ここまで -->

    <!-- 送信ボタン -->
    <section>
    <input type="submit" value="送信" class="i_button">
    </section>
</form>
</div>
<!-- Left content ends -->

<!-- Right content starts -->
<div class="canvas">
    <svg width="500" height="500">
        <circle></circle>
    </svg>    
</div>
<!-- Right content ends -->

</div>

<!-- footer starts -->
<footer class="">
  <div class="footer">
    <a class="">
      <span class="logo-text">Grow</span>
    </a>
    <ul class="nav-list">
        <li class="nav-link"> | © 2023 Grow </li>
        <li class="nav-link"><a href="./login.php">| Login</a></li>
    </ul>
  </div>
</footer>
<!-- footer ends -->


<script src="https://d3js.org/d3.v7.min.js"></script>
<script src="./js/d3.js"></script>
<script src="./js/base.js"></script>


</body>
</html>