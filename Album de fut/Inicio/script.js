document.addEventListener("DOMContentLoaded", function(){

const infoBtn = document.getElementById("infoBtn");
const infoModal = document.getElementById("infoModal");

const loginBtn = document.getElementById("loginBtn");
const loginModal = document.getElementById("modalLogin");

const registroBtn = document.getElementById("registroBtn");
const registroModal = document.getElementById("modalRegistro");

const page = document.querySelector(".page-wrapper");

/* ABRIR MODALES */

infoBtn.onclick = function(e){
e.preventDefault();
infoModal.style.display = "flex";
page.classList.add("modal-active");
}

loginBtn.onclick = function(e){
e.preventDefault();
loginModal.style.display = "flex";
page.classList.add("modal-active");
}

registroBtn.onclick = function(e){
e.preventDefault();
registroModal.style.display = "flex";
page.classList.add("modal-active");
}

/* BOTONES X */

const closeBtns = document.querySelectorAll(".close");

closeBtns.forEach(btn => {

btn.onclick = function(){

const modal = btn.closest(".modal");
modal.style.display = "none";
page.classList.remove("modal-active");

}

});

/* CLICK FUERA DEL MODAL */

window.onclick = function(event){

if(event.target == infoModal){
infoModal.style.display = "none";
page.classList.remove("modal-active");
}

if(event.target == loginModal){
loginModal.style.display = "none";
page.classList.remove("modal-active");
}

if(event.target == registroModal){
registroModal.style.display = "none";
page.classList.remove("modal-active");
}

}

});

function registrarUsuario(){

let nombre = document.getElementById("regNombre").value;
let correo = document.getElementById("regCorreo").value;
let pass = document.getElementById("regPass").value;
let pass2 = document.getElementById("regPass2").value;

let usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

let valido = true;

document.getElementById("errorNombre").textContent="";
document.getElementById("errorCorreo").textContent="";
document.getElementById("errorPass").textContent="";
document.getElementById("errorPass2").textContent="";

if(nombre===""){
document.getElementById("errorNombre").textContent="Ingresa tu nombre";
valido=false;
}

if(correo===""){
document.getElementById("errorCorreo").textContent="Ingresa un correo";
valido=false;
}

let existe = usuarios.find(u => u.correo === correo);

if(existe){
document.getElementById("errorCorreo").textContent="Este correo ya está registrado";
valido=false;
}

if(pass.length < 6){
document.getElementById("errorPass").textContent="Mínimo 6 caracteres";
valido=false;
}

if(pass !== pass2){
document.getElementById("errorPass2").textContent="Las contraseñas no coinciden";
valido=false;
}

if(!valido) return;

let nuevoUsuario = {
nombre:nombre,
correo:correo,
password:pass
};

usuarios.push(nuevoUsuario);

localStorage.setItem("usuarios", JSON.stringify(usuarios));



cerrarModal("modalRegistro");
window.location.href = "../album/album.html";
}

function iniciarSesion(){

let correo = document.getElementById("loginCorreo").value;
let pass = document.getElementById("loginPass").value;

let usuarios = JSON.parse(localStorage.getItem("usuarios")) || [];

document.getElementById("errorLoginCorreo").textContent="";
document.getElementById("errorLoginPass").textContent="";

let usuario = usuarios.find(u => u.correo === correo && u.password === pass);

if(!usuario){
document.getElementById("errorLoginPass").textContent="Correo o contraseña incorrectos";
return;
}


localStorage.setItem("usuarioActivo", JSON.stringify(usuario));

cerrarModal("modalLogin");
window.location.href = "../album/album.html";
}

function cerrarModal(id){
document.getElementById(id).style.display = "none";
}

