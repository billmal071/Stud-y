document.getElementById('subscribe-btn').addEventListener('click', checkForInput);

let x = document.forms.myForm.email.value;
var atposition = x.indexOf("@");
var dotposition = x.lastIndexOf(".");
let regexEmail = '[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$';

function checkForInput() {
    if (atposition < 1 || dotposition < atposition + 2 || dotposition + 2 >= x.length) {
        //setTimeout(document.getElementById("fail").style.display='block', 1000);
        //document.getElementById("fail").style.display = 'block';
        document.getElementById('close-f').addEventListener('click', () => {
            document.getElementById('fail').style.display = 'none';
        })
    } else {
        //setTimeout(document.getElementById("success").style.display='block', 1000);
        document.getElementById("success").style.display = 'block';
        document.getElementById('close-s').addEventListener('click', () => {
            document.getElementById('success').style.display = 'none';
        })
    }
}

/*
document.getElementById('see-how-it-works-btn').addEventListener('click', () => {

})*/