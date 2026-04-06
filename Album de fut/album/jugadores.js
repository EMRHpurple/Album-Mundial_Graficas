document.addEventListener("DOMContentLoaded", function(){

const container = document.getElementById("playersContainer");

for(let i = 1; i <= 11; i++){

const card = document.createElement("div");
card.className = "player-card";

card.dataset.player = "jugador" + i;

card.innerHTML = `

<img class="player-img" src="img/jugadores/portugal/jugador${i}.jpg" alt="Jugador ${i}">

<div class="player-info">
<h3>Jugador ${i}</h3>
<p>Sin obtener</p>
</div>

`;

container.appendChild(card);

}

});