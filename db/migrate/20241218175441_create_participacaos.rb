class CreateParticipacaos < ActiveRecord::Migration[7.2]
  def change
    create_table :participacaos do |t|
      t.references :palestra, null: false, foreign_key: true
      t.references :participante, null: false, foreign_key: true

      t.timestamps
    end
  end
end
