# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_12_18_185146) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "inscricoes", force: :cascade do |t|
    t.bigint "palestra_id", null: false
    t.bigint "participante_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "valor"
    t.boolean "pago"
    t.index ["palestra_id"], name: "index_inscricoes_on_palestra_id"
    t.index ["participante_id"], name: "index_inscricoes_on_participante_id"
  end

  create_table "palestras", force: :cascade do |t|
    t.string "titulo"
    t.date "data"
    t.datetime "horario"
    t.string "local"
    t.float "valor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participacaos", force: :cascade do |t|
    t.bigint "palestra_id", null: false
    t.bigint "participante_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["palestra_id"], name: "index_participacaos_on_palestra_id"
    t.index ["participante_id"], name: "index_participacaos_on_participante_id"
  end

  create_table "participantes", force: :cascade do |t|
    t.string "nome"
    t.string "email"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "inscricoes", "palestras"
  add_foreign_key "inscricoes", "participantes"
  add_foreign_key "participacaos", "palestras"
  add_foreign_key "participacaos", "participantes"
end
