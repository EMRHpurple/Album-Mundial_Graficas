document.addEventListener("DOMContentLoaded", () => {

const actionsList = document.getElementById("actionsList");
const formContainer = document.getElementById("formContainer");

const equipos = ["Equipo 1","Equipo 2","Equipo 3","Equipo 4"];
const jugadores = ["Jugador 1","Jugador 2","Jugador 3"];

document.querySelectorAll(".menu-item").forEach(item => {

item.addEventListener("click", () => {

const section = item.dataset.section;

actionsList.innerHTML = "";

const opciones = [
"Agregar",
"Modificar",
"Eliminar"
];

opciones.forEach(op => {

const li = document.createElement("li");

li.textContent = op + " " + section.slice(0,-1);

li.className = "action-item";

li.addEventListener("click", () => {

mostrarFormulario(section, op);

});

actionsList.appendChild(li);

});

});

});


function mostrarFormulario(section, action){

formContainer.innerHTML = "";

const form = document.createElement("form");

if(section === "equipos"){

if(action === "Agregar"){

form.innerHTML = `
<label>Nombre del equipo</label>
<input type="text" placeholder="Ej: México">

<label>Imagen del equipo</label>
<input type="text" placeholder="ruta/imagen.jpg">

<button type="submit">Guardar</button>
`;

}

if(action === "Modificar" || action === "Eliminar"){

let combo = `<label>Seleccionar equipo</label>
<select>`;

equipos.forEach(eq=>{
combo += `<option>${eq}</option>`;
});

combo += `</select>`;

form.innerHTML = combo;

if(action === "Modificar"){
form.innerHTML += `
<label>Nuevo nombre</label>
<input type="text">
`;
}

form.innerHTML += `<button>${action}</button>`;

}

}

if(section === "jugadores"){

if(action === "Agregar"){

let combo = `<label>Equipo</label>
<select>`;

equipos.forEach(eq=>{
combo += `<option>${eq}</option>`;
});

combo += `</select>`;

form.innerHTML = `
<label>Nombre del jugador</label>
<input type="text">

${combo}

<label>Imagen del jugador</label>
<input type="text">

<button>Guardar</button>
`;

}

if(action === "Modificar" || action === "Eliminar"){

let combo = `<label>Jugador</label>
<select>`;

jugadores.forEach(j=>{
combo += `<option>${j}</option>`;
});

combo += `</select>`;

form.innerHTML = combo;

if(action === "Modificar"){
form.innerHTML += `
<label>Nuevo nombre</label>
<input type="text">
`;
}

form.innerHTML += `<button>${action}</button>`;

}

}

formContainer.appendChild(form);

}

});