function showinfo() {
    document.getElementById("accountinfo").style.display = "block";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("edit").style.display = "none";
    document.getElementById("edit").style.display = "none";
}
function showorder() {
    document.getElementById("yourorder").style.display = "block";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("edit").style.display = "none";
}
function showbasket() {
    document.getElementById("Basket").style.display = "block";
    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("edit").style.display = "none";
}
function changeinfo() {

    document.getElementById("accountinfo").style.display = "none";
    document.getElementById("yourorder").style.display = "none";
    document.getElementById("Basket").style.display = "none";
    document.getElementById("edit").style.display = "block";
}