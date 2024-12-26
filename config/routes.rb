Rails.application.routes.draw do
  root "articles#index"

  # 新規作成と保存
  get "/create", to: "articles#new", as: "create"
  post "/articles", to: "articles#create"

  # 編集と更新
  get "/edit/:id", to: "articles#edit", as: "edit"
  patch "/article/:id", to: "articles#update"
  delete "/article/:id", to: "articles#destroy"

  # 詳細画面
  get "article/:id", to: "articles#show", as: "article"

  # ユーザ登録signup
  get "/signup", to: "users#new", as: "signup"
  post "/users", to: "users#create"

  # ログインsignin
  get "/signin", to: "sessions#new", as: "singin"
  post "/signin", to: "sessions#create"
  delete "/signout", to: "sessions#destroy"
end