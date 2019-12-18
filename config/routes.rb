Rails.application.routes.draw do
  devise_for :users
root 'task#index' 

get 'tasks' =>  'task#index'    #タスクの一覧画面
                                #マイページへのルーティング 
post 'tasks' =>  'task#create'  #タスク新規作成機能 
delete 'tasks/:id'  => 'task#destroy'  #タスク削除機能 
get 'user/:id' => 'user#show'  
end
