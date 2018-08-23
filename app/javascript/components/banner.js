import Typed from 'typed.js';

function loadDynamicBannerText() {
  if (document.getElementById('banner-typed-text')) {
    new Typed('#banner-typed-text', {
      strings: ["Looking for the best places to work?", "Let's Click and Work"],
      typeSpeed: 50,
      loop: true
    });
  }
}

export { loadDynamicBannerText };
