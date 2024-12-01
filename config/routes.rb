Rails.application.routes.draw do
  get "users/new"
  root "articles#index"

  #新規作成と保存
  get "/create", to: "articles#new", as: "create"
  post "/articles", to: "articles#create"

  #編集と更新
  get "/edit/:id", to: "articles#edit", as: "edit"
  patch "/article/:id", to: "articles#update"
  delete "/article/:id", to: "articles#destroy"

  #詳細画面
  get "article/:id", to: "articles#show", as: "article"
end
