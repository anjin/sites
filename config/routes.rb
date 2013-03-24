Sites::Application.routes.draw do
  
  devise_for :users
  resources :posts

  scope "/admin" do
    resources :tags
    resources :categories
    resources :users
    resources :settings
  end

  Dir[Rails.root.join "app/views/static/*.haml"].each do |static_file|
    static_path = File.basename static_file, ".html.haml"
    get "#{static_path}" => "static##{static_path}"
  end
  
  root :to => "main#index"

  get "posts(/:permalink)" => "main#posts"

  # :category/:post
  get '*category_and_post' => "main#show_post"
end
