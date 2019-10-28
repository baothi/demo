Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  defaults format: 'json' do
    resources :users, only: [:show] do
      resources :accounts, only: [:index]
    end
    resources :accounts, only: [:show]
  end

end
