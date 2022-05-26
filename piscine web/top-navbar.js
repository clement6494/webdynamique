
function openForm() {
    document.getElementById("register").style.display = "block";
}

function closeForm() {
    document.getElementById("register").style.display = "none";
}



// Get the modal
var modal = document.getElementById('register');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}