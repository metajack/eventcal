EventCal::Application.routes.draw do
  match "calendar" => "calendar#index"

  resources :events, :departments, :admins
end
