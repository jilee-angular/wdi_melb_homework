Rails.application.routes.draw do
  
 root 'tasks#index'
 resources :tasks 

 

 get '/tasks/:id/complete', to: 'tasks#complete'
 get '/tasks/:id/complete', to: 'tasks#uncomplete'
 

end
