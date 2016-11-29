Rails.application.routes.draw do
  resources :tasks
  patch '/tasks/:id/done', to: 'tasks#done', as: 'task_done'
end
