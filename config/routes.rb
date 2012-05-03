Spark::Application.routes.draw do
  root :to => 'high_voltage/pages#show', :id => 'about'
  resources :feeds
end
