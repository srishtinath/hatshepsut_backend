Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  delete '/clue_lists/:id/deleteItem/:item_id', to: "clue_lists#deleteItem"
  post '/users/login', to: 'users#login'
  get '/users/stay_logged_in', to: 'users#stay_logged_in'
  get '/users/wrongGuess/:user_id', to: 'users#wrongGuess'
  resources :characters, :chats, :clue_lists, :items, :item_clue_lists, :locations, :rooms, :stories, :users, :user_rooms
  # get '/item_clue_lists/:cluelist_id/:item_id', to: "item_clue_lists#show"

end
