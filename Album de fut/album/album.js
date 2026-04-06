document.addEventListener("DOMContentLoaded", function(){

const container = document.getElementById("teamsContainer");

for(let i = 1; i <= 15; i++){

const card = document.createElement("div");
card.className = "team-card";

card.dataset.team = "equipo" + i;

card.innerHTML = `

<img class="team-img" src="img/equipos/equipo${i}.jpg" alt="Equipo ${i}">

<div class="team-info">
<h3>Equipo ${i}</h3>
<p>0 / 11 cartas</p>
</div>

`;

card.addEventListener("click", function(){

window.location.href = "jugadores.html?team=equipo" + i;

});

container.appendChild(card);

}

});