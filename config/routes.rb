Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :restaurants do
    collection do # -> /restaurants/top (collection)
      get :top # non utilisé dans notre exercice, mais pour mémoire
    end
    resources :reviews, only: [:new, :create] # -> restaurants/restaurant_id/reviews/new
  end

  resources :reviews, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
