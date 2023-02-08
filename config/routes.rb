Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/", to:"articles#index"

  get "/authors", to:"authors#index"
  post "/authors", to:"authors#newauthor"
  delete "/authors", to:"authors#deleteauthor"

  get "/books", to:"books#index"
  post "/books", to:"books#newbook"
  delete "/books", to:"books#deletebook"
  
end
