class CaracteristicasController < ApplicationController
  before_action :set_caracteristica, only: [:show, :edit, :update, :destroy]

  def index
    @descricao_buscar = params[:descricao]
    #@caracteristicas = Caracteristica.all
    @caracteristicas = Caracteristica.where "descricao like ?", "%#{@descricao_buscar}%"
  end

  def show
  end

  def new
    @caracteristica = Caracteristica.new
  end

  def edit
  end

  def create
    @caracteristica = Caracteristica.new(caracteristica_params)

    respond_to do |format|
      if @caracteristica.save
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristica }
      else
        format.html { render :new }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @caracteristica.update(caracteristica_params)
        format.html { redirect_to @caracteristica, notice: 'Caracteristica was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristica }
      else
        format.html { render :edit }
        format.json { render json: @caracteristica.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @caracteristica.destroy
    respond_to do |format|
      format.html { redirect_to caracteristicas_url, notice: 'Caracteristica was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_caracteristica
      @caracteristica = Caracteristica.find(params[:id])
    end

    def caracteristica_params
      params.require(:caracteristica).permit(:descricao)
    end
end
