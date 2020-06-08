export const selectRestaurant = ({ restaurant }, id) => {
  if (restaurant[id]) {
    const restaurant = restaurants[id];
    return restaurant;
  }
  return {};
};
export const asArray = ({ restaurants }) => (
  Object.keys(restaurants).map(key => restaurants[key])
);