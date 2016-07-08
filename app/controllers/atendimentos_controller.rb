class AtendimentosController < ApplicationController
  
  before_action :set_atendimento, only: [:show, :edit, :update, :destroy]

  # GET /atendimentos
  # GET /atendimentos.json
  def index
    @atendimentos = Atendimento.order("created_at DESC")
  end

  # GET /atendimentos/1
  # GET /atendimentos/1.json
  def show

  end

  # GET /atendimentos/new
  def new
    @atendimento = Atendimento.new
    @user = User.all
    @cliente = Cliente.all
    @tipoatendimento = Tipoatendimento.all
  end

  # GET /atendimentos/1/edit
  def edit
    @user = User.all
    @cliente = Cliente.all
    @tipoatendimento = Tipoatendimento.all
  end

  # POST /atendimentos
  # POST /atendimentos.json
  def create
    @atendimento = Atendimento.new(atendimento_params)
    #atendimento sempre inicia com status A = Aberto
    @atendimento.status = "A"

    respond_to do |format|
      if @atendimento.save
        format.html { redirect_to @atendimento, notice: 'Atendimento was successfully created.' }
        format.json { render :show, status: :created, location: @atendimento }
      else
        format.html { render :new }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /atendimentos/1
  # PATCH/PUT /atendimentos/1.json
  def update
    respond_to do |format|
      if @atendimento.update(atendimento_params)
        format.html { redirect_to @atendimento, notice: 'Atendimento was successfully updated.' }
        format.json { render :show, status: :ok, location: @atendimento }
      else
        format.html { render :edit }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /atendimentos/1
  # DELETE /atendimentos/1.json
  def destroy
    @atendimento.destroy
    respond_to do |format|
      format.html { redirect_to atendimentos_url, notice: 'Atendimento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
      @comentario = @atendimento.comentarios.build
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def atendimento_params
      params.require(:atendimento).permit(:assunto, :descricao, :status, :cliente_id, :tipoatendimento_id, :user_id)
    end
end
