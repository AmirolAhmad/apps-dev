Rails.application.routes.draw do
  scope "(:locale)", locale: /en|ms/ do
    get '/dashboard' => 'dashboards#index'
    devise_for :users, controllers: {
      sessions: 'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations',
      passwords: 'users/passwords',
      unlocks: 'users/unlocks'
    }
    devise_scope :user do
      get '/login' => 'users/sessions#new'
      get '/register' => 'users/registrations#new'
      get '/settings' => 'users/registrations#edit'
    end
    root 'pages#index'
  end
end
