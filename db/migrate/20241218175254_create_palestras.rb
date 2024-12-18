class CreatePalestras < ActiveRecord::Migration[7.2]
  def change
    create_table :palestras do |t|
      t.string :titulo
      t.date :data
      t.datetime :horario
      t.string :local
      t.float :valor

      t.timestamps
    end
  end
end
