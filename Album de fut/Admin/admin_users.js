document.querySelectorAll(".delete-user").forEach(btn=>{

btn.addEventListener("click",()=>{


btn.closest(".user-card").remove();


});

});