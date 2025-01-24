/**
 * 
 */
document.addEventListener("DOMContentLoaded", function () {
    const header = document.querySelector(".hidden-header");
    const heroSection = document.querySelector(".hero");
    const heroHeight = heroSection.offsetHeight; // Altura de la sección inicial

    window.addEventListener("scroll", function () {
        if (window.scrollY > heroHeight) {
            header.classList.add("visible"); // Muestra el menú
        } else {
            header.classList.remove("visible"); // Oculta el menú
        }
    });
});
