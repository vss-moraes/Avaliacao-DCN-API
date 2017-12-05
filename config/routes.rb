Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'authenticate', to:'authentication#authenticate'

  resource :inscritos do
    get ':inscrito_id/notas', to: 'notas#show', as: 'nota'
    post ':inscrito_id/notas', to: 'notas#create'
  end

  resource :avaliadors
end

# curl -H "Authorization: eyJhbGciOiJIUzI1NiJ9.eyJ1c3VhcmlvX2lkIjoxLCJleHAiOjE1MTI0NzgwNDB9.0vhP7QEbOHAgZTATCch7XYIGpaQSUXSMU37VU7urUj4" http://localhost:3000/inscritos
