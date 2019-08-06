Rails.application.routes.draw do
  get 'contact/contact'
  get 'team/team', to: 'team#team'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
