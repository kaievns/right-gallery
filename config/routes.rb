ActionController::Routing::Routes.draw do |map|
  map.resources :pictures
  
  map.root :controller => 'pictures', :action => 'index'
end
