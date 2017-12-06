class ApplicationController < ActionController::API
  attr_reader :current_user

  private
    def access_permission(perfil_types)
      @current_user = AuthorizeApiRequest.call(request.headers).result
      unless perfil_types.include?(@current_user.perfil.class.name)
        render json: {error: 'Not Authorized'}, status: 401
      end
    end
end
