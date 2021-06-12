const hideForm = () =>{

  let button = document.querySelector(".click-me")
  let placeholder = document.getElementById("insert-here")

  if (button) {
    button.addEventListener("click", (event) => {
      console.log("Hola");
      placeholder.style.display = "block";
    });
  }
}

export { hideForm };
