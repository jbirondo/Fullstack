export const getRestaurant = id => (
    $.ajax({
        method: "GET",
        url: `api/restaurants/${id}`
    })
)

export const getRestaurants = data => (
    $.ajax({
        method: "GET",
        url: "api/restaurants",
        data
    })
)
