const myPacks = document.getElementById("myPacks");
const buyButtons = document.querySelectorAll(".pack-card button");

buyButtons.forEach(btn => {

btn.addEventListener("click", () => {

const pack = document.createElement("div");

pack.className = "pack-card";

pack.innerHTML = "<p>Sobre</p>";

myPacks.appendChild(pack);

});

});