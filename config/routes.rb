MarketPlaceApi::Application.routes.draw do 
  #Api definition
  namespace :api, defaults: { format: :json },
                              constraints: { subdomain: 'api' }, path: '/' do
    #This is where we list our resources
  end
end
