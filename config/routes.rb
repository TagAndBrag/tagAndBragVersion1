TagAndBragVersion1::Application.routes.draw do
  resources :user_timeline, :controller => 'user_timeline'
  resources :view_timeline, :controller => 'view_timeline'
  resources :view_profile, :controller => 'profile'
  resources :buy_deal, :controller => 'buy_deal'
  resources :reciept, :controller => 'reciept'
end