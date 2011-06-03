PineappleCloud::Application.routes.draw do
  
 

  match "test/start" 

  get "test/s1"

  match "test/s2"


  match "test/s3"

  match "test/s4"

  resources :pineapple_steps
  
  match "/pineapple.js" => "pineapple#show", :as => :pineapple_engine

  match "/pineapple" => "pineapple#steps", :as => :pineapple_steps_engine



end
