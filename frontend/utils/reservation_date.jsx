export const getReservationDate = id =>
  $.ajax({
    method: "GET",
    url: `api/reservation_dates/${id}`
  });

export const getReservationDates = () =>
  $.ajax({
    method: "GET",
    url: "api/reservation_dates/"
  });

export const createReservationDate = (date) => 
    $.ajax({
        method: "POST",
        url: "api/reservation_dates/",
        data: {date}
    })

export const deleteReservationDate = (id) =>
    $.ajax({
        method: "DELETE",
        url: `api/reservation_dates/${id}`
    })