HotelUrbano::Application.routes.draw do
  root :to => "hotels#index"
  get "/hotels/in/:search_term/from/:check_in/to/:check_out", to: 'hotels#find', format: 'json'
  get "/hotels/", to: 'hotels#index'
  get "/hotels/destination/:search_term", to: 'hotels#destination'
end
