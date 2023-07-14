
// カレンダーでデフォルトを今日に設定
const dateInput = document.getElementById('date-input');
const today = new Date().toISOString().split('T')[0];
dateInput.value = today;

// 感情の強さ
function inputChange(event){
    msg.innerText = '気持ちの強さは ' + scale.value + ' です。';
  }
  
  let volumeSlider = document.getElementById('scale');
  volumeSlider.addEventListener('input', inputChange);
  let msg = document.getElementById('msg');