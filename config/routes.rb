Rails.application.routes.draw do
root 'task#index' 

get 'tasks' =>  'task#index'    #タスクの一覧画面 
post 'tasks' =>  'task#create'  #タスク新規作成機能 
delete 'tasks/:id'  => 'task#destroy'  #タスク削除機能 
end
