document.getElementById('submit').addEventListener('click', function () {

    const reg = /^[ A-Za-z]{6,}$/
    const name = document.getElementById('name').value;

    if (reg.test(name)) {
        alert("Valid Name")
    }
    else {
        alert("Invalid Name");
    }

})
window.onload = function () {
    alert("Welcome to Book Store.");
};
document.getElementById('submit').addEventListener('click', function () {

    const name = document.getElementById('pass').value;
    var reg = name.length;

    if (reg > 6) {
        alert("Valid Password")
    }
    else {
        alert("Invalid Password");
    }

})