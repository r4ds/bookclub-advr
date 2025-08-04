// listing_new_window.js
document.addEventListener("DOMContentLoaded", function() {
  const links = document.querySelectorAll('#listing-slides a, #listing-videos a');
  
  links.forEach(link => {
    link.target = '_blank';
    link.rel = 'noopener noreferrer';
  });
});
