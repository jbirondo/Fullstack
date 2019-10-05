export const getReservation = (id) => (
    $.ajax({
        method: "GET",
        url: `api/reservations/${id}`
    })
)

export const getReservations = () => (
    $.ajax({
        method: "GET",
        url: "api/reservations"
    })
)

export const postReservation = (reservation) => (
    $.ajax({
        method: "POST",
        url: "api/reservations",
        data: { reservation }
    })
)