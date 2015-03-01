HotelUrbano::Application.routes.draw do
  get "/hotels/in/:search_term/from/:check_in/to/:check_out", to: 'hotels#find', format: 'json'
  get "/hotels/", to: 'hotels#index'
end
