Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'kafka/testsend'
  get 'kafka/testget'
  get 'twitter/testsearch'

  root 'search/index'
end
