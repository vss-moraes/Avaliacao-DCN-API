class AuthenticationController < ApplicationController
  def authenticate
    command = AuthenticateUser.new(params[:cpf], params[:password])
    command.call

    if command.success?
      puts "COMMAND: #{command.usuario.inspect}"
      render json: {auth_token: command.result, usuario_id: command.usuario.id}
    else
      render json: {error: command.errors }, status: :unauthorized
    end
  end
end
