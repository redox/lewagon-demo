Rails.application.routes.draw do

  get '/ads/:id', as: :ad, controller: 'ads', action: 'show'
  get '/search', as: :search_results, controller: 'search', action: 'results'

  root 'search#new'

  ActiveAdmin.routes(self)
end
