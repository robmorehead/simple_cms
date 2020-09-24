Rails.application.routes.draw do
  root "demo#index"
  
  resources :subjects do

    # delete is optional
    member do
      get :delete
    end

  end

  resources :pages do

    # delete is optional
    member do
      get :delete
    end

  end
  
  resources :sections do

    # delete is optional
    member do
      get :delete
    end

  end

  get 'example/test'
  get 'example/record'

  get 'demo/index'
  get 'demo/hello'
  get 'demo/other_hello'
  get 'demo/lynda'

  # Default route, may go away in future version of rails:
  # get ':controller(/:action(/:id))'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
