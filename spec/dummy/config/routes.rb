Rails.application.routes.draw do
  mount SwaggerRails::Engine => '/api-docs'

  resources :blogs, defaults: { :format => :json }
end
