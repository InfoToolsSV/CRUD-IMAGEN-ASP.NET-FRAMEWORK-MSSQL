function mostrarimagen(input) {
    if (input.files && input.files[0]) {
        var leer = new FileReader();
        leer.onload = function (e) {
            document.getElementsByTagName("img")[0].setAttribute("src", e.target.result);
        }
        leer.readAsDataURL(input.files[0]);
    }
}