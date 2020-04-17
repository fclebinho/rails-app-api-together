Rails.application.routes.draw do
  root 'home#index'
  devise_for :users

  api_version(:module => "api/V1", :path => {:value => "v1"}, defaults: { format: :json }, :default => true) do
    post 'authenticate', to: 'authentication#authenticate'
    post 'register', to: 'users#create'
    get 'demo', to: 'demo#index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
