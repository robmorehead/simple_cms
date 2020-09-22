Rails.application.routes.draw do
  get 'example/test'
  get 'example/record'

  root 'demo#index'
  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # Default route, may go away in future version of rails:
  # get ':controller(/:action(/:id))'

  root "demo#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
