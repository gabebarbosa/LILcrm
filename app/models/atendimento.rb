class Atendimento < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :user
	belongs_to :tipoatendimento
	has_many :resposta
	has_many :comentarios


	#contatos = Contato.where("nome LIKE ?", "%daniel%")

	




end
