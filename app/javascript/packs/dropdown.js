//= require bootstrap

const mypageButton = document.getElementById("mypageButton");
const mypageDropdown = document.getElementById("mypageDropdown");
const arrow = document.getElementById("arrow");

if (mypageButton){
  mypageButton.addEventListener("click", () => {
    mypageDropdown.classList.toggle("is-open");
  });
}
