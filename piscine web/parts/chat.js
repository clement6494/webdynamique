function openForm() {
    document.getElementById("myForm").style.display = "block";
}

function closeForm() {
    document.getElementById("myForm").style.display = "none";
}

function openChat( id ) {
    document.getElementById("receiver_name").innerHTML = id;
    document.getElementById("chat").style.display = "block";

}

function closeChat() {
    document.getElementById("chat").style.display = "none";
}