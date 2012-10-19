Picmarks::Application.routes.draw do
  
  get "pictures/new", :controller => "pictures", :action => "new"
  
  post "/pictures", :controller => "pictures", :action => "create"
  
  get "/pictures", :controller => "pictures", :action => "index"
  
  get "/pictures/:id", :controller => 'pictures', :action => 'show'
  
  get "/home", :controller => 'pictures', :action => "home"
  
  get "/pictures/delete/:id", :controller => 'pictures', :action => 'delete'
  
  root :to => "pictures#home"
  
end
