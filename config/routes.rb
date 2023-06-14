Rails.application.routes.draw do
  # get 'reviews/new'
  # get 'restaurants/index'
  # get 'restaurants/show'
  # get 'restaurants/new'
  # get 'restaurants/create'
  # get 'restaurants/edit'
  # get 'restaurants/update'
  # get 'restaurants/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: [:new, :create]
    collection do
      get :top
    end
  end
  resources :reviews, only: [:destroy]
  # Defines the root path route ("/")
  # root "articles#index"
end
