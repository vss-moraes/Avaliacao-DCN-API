class ApplicationController < ActionController::API
  attr_reader :current_user

  private
    def access_permission(perfil_types)
      @current_user = AuthorizeApiRequest.call(request.headers).result
      if @current_user
        unless perfil_types.include?(@current_user.perfil.class.name)
          render json: {error: 'Not Authorized'}, status: 401
        end
      else
        render json: {error: 'Nenhum usuário encontrado'}, status: 401
      end
    end
end
