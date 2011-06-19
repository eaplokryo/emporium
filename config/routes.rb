Src::Application.routes.draw do
  devise_for :users

  scope "/:locale" do
    match "welcome" => "welcome#welcome"
  end

  match "/:locale" => "welcome#welcome"

  root :to => "welcome#welcome"
end
