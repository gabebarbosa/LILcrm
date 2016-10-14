class TipoatendimentosController < ApplicationController
  before_action :set_tipoatendimento, only: [:show, :edit, :update, :destroy]

  def index
    @descricao_buscar = params[:descricao]
    #@tipoatendimentos = Tipoatendimento.all
    @tipoatendimentos = Tipoatendimento.where "descricao like ?", "%#{@descricao_buscar}%"
  end

  def show
  end

  def new
    @tipoatendimento = Tipoatendimento.new
  end

  def edit
  end

  def create
    @tipoatendimento = Tipoatendimento.new(tipoatendimento_params)

    respond_to do |format|
      if @tipoatendimento.save
        format.html { redirect_to @tipoatendimento, notice: 'Tipo de atendimento criado com sucesso!' }
        format.json { render :show, status: :created, location: @tipoatendimento }
      else
        format.html { render :new }
        format.json { render json: @tipoatendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @tipoatendimento.update(tipoatendimento_params)
        format.html { redirect_to @tipoatendimento, notice: 'Tipo de atendimento atualizado com sucesso!' }
        format.json { render :show, status: :ok, location: @tipoatendimento }
      else
        format.html { render :edit }
        format.json { render json: @tipoatendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tipoatendimento.destroy
    respond_to do |format|
      format.html { redirect_to tipoatendimentos_url, notice: 'Tipo de atendimento deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    def set_tipoatendimento
      @tipoatendimento = Tipoatendimento.find(params[:id])
    end

    def tipoatendimento_params
      params.require(:tipoatendimento).permit(:descricao)
    end
end
