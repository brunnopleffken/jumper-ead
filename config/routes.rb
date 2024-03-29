Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'students#index'

  resources :students do
    resources :lessons do
      resource :activity
    end
  end

  namespace :admin do
    resources :lessons
    resources :students
  end
end
