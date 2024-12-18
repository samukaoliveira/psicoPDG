class Participacao < ApplicationRecord
  belongs_to :palestra
  belongs_to :participante
end
