Rails.application.routes.draw do
  namespace :api do 
    get "/names" => "cats#names"
    get "/cats" => "cats#index"
    get "/cats/:id" => "cats#show"
    post "/cats" => "cats#show"
  end
end
