document.getElementById('subscribe-btn').addEventListener('click', checkForInput);

let form1 = document.forms["myForm"]["email"].value;

function checkForInput() {
    if (form1 == "") {
        setTimeout(document.getElementById("fail").style.display='block', 5000);
    } else {
        setTimeout(document.getElementById("success").style.display='block', 5000);
    }
}