class NotasController < ApplicationController
  before_action :set_inscrito, only: [:show, :create, :update, :destroy]

  # GET /inscritos/:inscrito_id/notas
  def show
    render json: @inscrito.notas
  end

  # POST /inscritos/:inscrito_id/notas
  def create
    @nota = @inscrito.notas.build(nota_params)
    @nota.avaliador = Avaliador.find(@current_user.perfil_id)

    if @nota.save
      render json: @nota, status: :created
    else
      render json: @nota.errors, status: :unprocessable_entity
    end
  end

  private
    def set_inscrito
      @inscrito = Inscrito.find(params[:inscrito_id])
    end

    def nota_params
      params.require(:nota).permit(:fantasia, :similaridade, :interpretacao, :criatividade, :baixo_custo)
    end
end
