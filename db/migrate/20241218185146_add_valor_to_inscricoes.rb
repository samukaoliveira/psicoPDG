class AddValorToInscricoes < ActiveRecord::Migration[7.2]
  def change
    add_column :inscricoes, :valor, :float
    add_column :inscricoes, :pago, :boolean, default: false
  end
end
