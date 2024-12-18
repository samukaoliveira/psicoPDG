class AddPresenteToInscricoes < ActiveRecord::Migration[7.2]
  def change
    add_column :inscricoes, :presente, :boolean, default: false
  end
end
