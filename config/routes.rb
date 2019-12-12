Rails.application.routes.draw do
  resources :items
  get "login" =>  "users#login_form"
  post "login" => "users#login"
end
