class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:update, :destroy]

  before_action do
    access_permission(%w(Admin))
  end

  # GET /usuarios
  def index
    @usuarios = Usuario.all
    render json: @usuarios
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      render json: @usuario, status: :created
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuarios.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      if params[:usuario][:perfil_attributes].empty?
        params.require(:usuario).permit(
          :cpf, :nome_completo, :password, :password_confirmation, :perfil_type,
          :perfil_attributes, perfil_attributes: {})
      else
        params.require(:usuario).permit(
          :cpf, :nome_completo, :password, :password_confirmation, :perfil_type,
          perfil_attributes: [:presidente, :interno])
      end
    end
end
