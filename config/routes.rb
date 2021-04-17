Rails.application.routes.draw do
  root 'test#first'
  get 'test/first'
  get 'test/second'
  # match 'test/first', :to => 'test#first', :via => :get
  # match 'test/second', :to => 'test#second', :via => :get
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
