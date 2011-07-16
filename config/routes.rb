Src::Application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }

  scope "/:locale" do
    match "welcome" => "welcome#welcome"
  end

  match "/:locale" => "welcome#welcome"

  root :to => "welcome#welcome"
end
