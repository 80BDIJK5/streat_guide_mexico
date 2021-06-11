import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Tacos", "Quesadillas", "Esquites", "Gorditas"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };
