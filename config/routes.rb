Rails.application.routes.draw do
  resources :pacientes
  root 'pacientes#index'
end
