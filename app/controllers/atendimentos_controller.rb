class AtendimentosController < ApplicationController
  
  before_action :set_atendimento, only: [:show, :edit, :update, :encerrar_atendimento]

  def index
    @status_buscar = params[:status]
    #@atendimentos = Atendimento.includes(:cliente, :user, :tipoatendimento ).order("created_at DESC")
    #@atendimentos = Atendimento.order("created_at DESC").where "status like 'A' "
    @atendimentos = Atendimento.where "status like ?", "%#{@status_buscar}%"
  end


  def show

  end

  def new
    @atendimento = Atendimento.new
    @user = User.all
    @cliente = Cliente.all
    @tipoatendimento = Tipoatendimento.all
  end

  def edit
    @user = User.all
    @cliente = Cliente.all
    @tipoatendimento = Tipoatendimento.all
  end

  def create
    @atendimento = Atendimento.new(atendimento_params)
    #atendimento sempre inicia com status A = Aberto
    @atendimento.status = "A"

    respond_to do |format|
      if @atendimento.save
        format.html { redirect_to @atendimento, notice: 'Atendimento criado com sucesso.' }
        format.json { render :show, status: :created, location: @atendimento }
      else
        format.html { render :new }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @atendimento.update(atendimento_params)
        format.html { redirect_to @atendimento, notice: 'Atendimento alterado com sucesso.' }
        format.json { render :show, status: :ok, location: @atendimento }
      else
        format.html { render :edit }
        format.json { render json: @atendimento.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @atendimento.destroy
    respond_to do |format|
      format.html { redirect_to atendimentos_url, notice: 'Atendimento deletado com sucesso.' }
      format.json { head :no_content }
    end
  end


  def encerrar_atendimento
      #comentário automático ao finalizar o atendimento....
      @comentario.assign_attributes(:user => current_user.email, :descricao => 'Atendimento finalizado', :atendimento_id => @atendimento.id)
      @atendimento.status = 'F'
      @atendimento.save
      redirect_to atendimentos_url, notice: 'Atendimento Finalizado com sucesso.'     
  end

  private
    def set_atendimento
      @atendimento = Atendimento.find(params[:id])
      @comentario = @atendimento.comentarios.build
    end

    def atendimento_params
      params.require(:atendimento).permit(:assunto, :descricao, :status, :cliente_id, :tipoatendimento_id, :user_id)
    end
end
