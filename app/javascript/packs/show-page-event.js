const hideForm = () =>{

let button = Document.querySelector(".click-me")
let placeholder = Document.getElementbyID("insert-here")

button.addEventListener("click", event => {
  placeholder.style.display = block;
});
}

export { hideForm };
