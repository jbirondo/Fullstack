export const getRestaurant = id => (
    $.ajax({
        method: "GET",
        url: `api/restaurants/${id}`
    })
)

export const getRestaurants = () => (
    $.ajax({
        method: "GET",
        url: "api/restaurants",
    })
)
