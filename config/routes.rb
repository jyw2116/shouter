Shouter::Application.routes.draw do
  constraints Clearance::Constraints::SignedIn.new do
    root to: 'dashboards#show'
  end

  resource  :dashboard, only: [:show]
  # or could do this... but this is the least extensible
  get "dashboard" => "dashboards#show"
end
