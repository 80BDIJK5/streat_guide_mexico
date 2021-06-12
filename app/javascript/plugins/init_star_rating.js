import "jquery-bar-rating";

const initStarRating = () => {
  $('#stall_rating, #review_rating').barrating({
    theme: 'css-stars'
  });
};

export { initStarRating };
