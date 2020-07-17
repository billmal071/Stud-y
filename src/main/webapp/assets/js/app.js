document.getElementById('subscribe-btn').addEventListener('click', checkForInput);

let form1 = document.forms["myForm"]["email"].value;
let regexEmail = '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$';

function checkForInput() {
    if (form1 == "") {
        setTimeout(document.getElementById("fail").style.display='block', 1000);
        document.getElementById('close-f').addEventListener('click', () => {
                document.getElementById('fail').style.display='none';
        })
    } else {
        setTimeout(document.getElementById("success").style.display='block', 1000);
        document.getElementById('close-s').addEventListener('click', () => {
                document.getElementById('success').style.display = 'none';
            })
    }
}