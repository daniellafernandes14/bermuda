Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: %i[show create update destroy] do
    resources :posts, only: %i[index show create update destroy]
  end
end
