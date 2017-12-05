class InscritosController < ApplicationController
  before_action :set_inscrito, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request

  # GET /inscritos
  def index
    @inscritos = Inscrito.all

    render json: @inscritos
  end

  # GET /inscritos/1
  def show
    render json: @inscrito
  end

  # POST /inscritos
  def create
    @inscrito = Inscrito.new(inscrito_params)

    if @inscrito.save
      render json: @inscrito, status: :created
    else
      render json: @inscrito.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inscritos/1
  def update
    if @inscrito.update(inscrito_params)
      render json: @inscrito
    else
      render json: @inscrito.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inscritos/1
  def destroy
    @inscrito.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrito
      @inscrito = Inscrito.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inscrito_params
      params.require(:inscrito).permit(:nome, :personagem, :categoria)
    end
end
