document.addEventListener("DOMContentLoaded", () => {
  console.log("dom content loaded");

  const navSlide = () => {
    const burger = document.querySelector(".nav-burger");
    const navbar = document.querySelector(".nav-buttons");

    burger.addEventListener("click", () => {
      navbar.classList.toggle("mobile-nav-on");

      burger.classList.toggle("nav-on");
    });
  };

  navSlide();
});
