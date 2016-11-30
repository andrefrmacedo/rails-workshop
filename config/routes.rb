Rails.application.routes.draw do
  resources :lists do
    resources :tasks
  end
  patch '/lists/:list_id/tasks/:id/done', to: 'tasks#done', as: 'task_done'
end
