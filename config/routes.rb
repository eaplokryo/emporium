Src::Application.routes.draw do
  scope '/:locale' do
    match 'welcome' => 'welcome#welcome'
  end

  match '/:locale' => 'welcome#welcome'

  root :to => 'welcome#welcome'
end
