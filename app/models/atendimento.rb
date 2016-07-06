class Atendimento < ActiveRecord::Base
	belongs_to :cliente
	belongs_to :user
	belongs_to :tipoatendimento
	has_many :resposta
end
