class NotasController < ApplicationController
  before_action :set_inscrito, only: [:index, :create]
  before_action :set_nota, only: [:update, :destroy]

  # GET /inscritos/:inscrito_id/notas
  def index
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

  # PATCH/PUT /notas/:id
  def update
    if @nota.update(nota_params)
      render json: @nota, status: :created
    else
      render json: @nota.errors, status: :unprocessable_entity
    end
  end

  # DELETE /notas/:id
  def destroy
    @nota.destroy
  end

  private
    def set_inscrito
      @inscrito = Inscrito.find(params[:inscrito_id])
    end

    def set_nota
      @nota = Nota.find(params[:id])
    end

    def nota_params
      params.require(:nota).permit(:fantasia, :similaridade, :interpretacao, :criatividade, :baixo_custo)
    end
end
