class Respostum < ActiveRecord::Base
	belongs_to :atendimento 
	belongs_to :user
end
