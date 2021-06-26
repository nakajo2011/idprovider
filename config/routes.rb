Rails.application.routes.draw do
  get 'home/index'
  use_doorkeeper
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get '/me' => 'users#me'
    end
  end

  root to: 'home#index'
end
