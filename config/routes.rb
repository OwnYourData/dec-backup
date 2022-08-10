Rails.application.routes.draw do
    match '/checkUser', to: 'decs#checkuser', via: 'post'
    match '/backup',    to: 'decs#backup',    via: 'post'
    match '/restore',   to: 'decs#restore',   via: 'post'
    match ':not_found' => 'application#missing', :constraints => { :not_found => /.*/ }, via: [:get, :post]    
end
