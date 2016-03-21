require 'api_constraints'

MarketPlaceApi::Application.routes.draw do 

  devise_for :users
  #Api definition
  namespace :api, defaults: { format: :json } do
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default: true) do
      #This is where we list our resources
      resources :users, only: [:show]
    end
  end
end

