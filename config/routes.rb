PineappleCloud::Application.routes.draw do
  
  resources :pineapple_steps
  
  match "/pineapple.js" => "pineapple#show", :as => :pineapple_engine

  match "/pineapple" => "pineapple#steps", :as => :pineapple_steps_engine



end
