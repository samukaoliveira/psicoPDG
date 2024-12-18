class Inscricao < ApplicationRecord
  belongs_to :palestra
  belongs_to :participante


  def pago?
    self[:pago]
  end

  def presente?
    self[:presente]
  end


end
