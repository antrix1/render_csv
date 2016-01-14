Rails.application.routes.draw do
  get '/home' => 'home#index', as: :home
  get '/table_view' => 'home#table_view', as: :table_view
end
