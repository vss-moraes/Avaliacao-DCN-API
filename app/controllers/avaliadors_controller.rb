class AvaliadorsController < ApplicationController
  before_action :set_avaliador, only: [:show, :update, :destroy]
  skip_before_action :authenticate_request

  # GET /avaliadors
  def index
    @avaliadors = Avaliador.all

    render json: @avaliadors.to_json(include: :usuario)
  end

  # GET /avaliadors/1
  def show
    render json: @avaliador.to_json(include: :usuario)
    # render json: @avaliador
  end

  # POST /avaliadors
  def create
    @avaliador = Avaliador.new(avaliador_params)

    if @avaliador.save
      render json: @avaliador, status: :created, location: @avaliador
    else
      render json: @avaliador.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /avaliadors/1
  def update
    if @avaliador.update(avaliador_params)
      render json: @avaliador
    else
      render json: @avaliador.errors, status: :unprocessable_entity
    end
  end

  # DELETE /avaliadors/1
  def destroy
    @avaliador.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_avaliador
      @avaliador = Avaliador.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def avaliador_params
      params.fetch(:avaliador, {})
    end
end
