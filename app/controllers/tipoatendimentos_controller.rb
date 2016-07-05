class TipoatendimentosController < ApplicationController
  before_action :set_tipoatendimento, only: [:show, :edit, :update, :destroy]

  # GET /tipoatendimentos
  # GET /tipoatendimentos.json
  def index
    @tipoatendimentos = Tipoatendimento.all
  end

  # GET /tipoatendimentos/1
  # GET /tipoatendimentos/1.json
  def show
  end

  # GET /tipoatendimentos/new
  def new
    @tipoatendimento = Tipoatendimento.new
  end

  # GET /tipoatendimentos/1/edit
  def edit
  end

  # POST /tipoatendimentos
  # POST /tipoatendimentos.json
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

  # PATCH/PUT /tipoatendimentos/1
  # PATCH/PUT /tipoatendimentos/1.json
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

  # DELETE /tipoatendimentos/1
  # DELETE /tipoatendimentos/1.json
  def destroy
    @tipoatendimento.destroy
    respond_to do |format|
      format.html { redirect_to tipoatendimentos_url, notice: 'Tipo de atendimento deletado com sucesso!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipoatendimento
      @tipoatendimento = Tipoatendimento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipoatendimento_params
      params.require(:tipoatendimento).permit(:descricao)
    end
end
