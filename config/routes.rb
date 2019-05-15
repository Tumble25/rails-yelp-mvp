Rails.application.routes.draw do

  resources :restaurants, only: ['index',  'create',   'new', 'edit', 'show'] do
    resources :reviews, only: ['index',  'create',   'new', 'edit', 'show']

  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# A visitor can see the list of all
# restaurants.

# He can add a new restaurant, and be
# redirected to the show view of that
#new restaurant.

# He can see the details of a restaurant,
# with all the reviews related to
# the restaurant.

# He can add a new review to a
# restaurant
