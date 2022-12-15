Rails.application.routes.draw do
  ###Create
  post "/dogs" => "dogs#create"
  patch "/dogs/:id" => "dogs#update"

  ###USER CREATE
  post "/users" => "users#create"

  ###USER SIGNIN
  post "/sessions" => "sessions#create"
end
