const modal = document.getElementById("tradeModal");
const openBtn = document.getElementById("openTradeForm");

openBtn.addEventListener("click", () => {

modal.style.display = "flex";

});

modal.addEventListener("click", e => {

if(e.target === modal){

modal.style.display = "none";

}

});

const notifBtn = document.getElementById("notifications");
const notifPanel = document.getElementById("notificationsPanel");
const closeNotif = document.getElementById("closeNotifications");

notifBtn.addEventListener("click", () => {

notifPanel.classList.toggle("active");

});

/* cerrar con boton */

closeNotif.addEventListener("click", () => {

notifPanel.classList.remove("active");

});

/* cerrar si clickeas fuera */

document.addEventListener("click", (e) => {

if(
!notifPanel.contains(e.target) &&
!notifBtn.contains(e.target)
){

notifPanel.classList.remove("active");

}

});