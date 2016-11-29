Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  patch '/tasks/:id/done', to: 'tasks#done', as: 'task_done'
end
