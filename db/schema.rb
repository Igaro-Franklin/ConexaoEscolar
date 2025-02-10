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

ActiveRecord::Schema[8.0].define(version: 2025_02_10_134237) do
  create_table "alunos", force: :cascade do |t|
    t.string "nome"
    t.date "data_nascimento"
    t.string "matricula"
    t.integer "turma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turma_id"], name: "index_alunos_on_turma_id"
  end

  create_table "materia", force: :cascade do |t|
    t.string "nome"
    t.text "descricao"
    t.integer "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_materia_on_professor_id"
  end

  create_table "professors", force: :cascade do |t|
    t.string "nome"
    t.string "especializacao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "salas", force: :cascade do |t|
    t.string "numero"
    t.integer "capacidade"
    t.integer "turma_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["turma_id"], name: "index_salas_on_turma_id"
  end

  create_table "turmas", force: :cascade do |t|
    t.string "nome"
    t.string "serie"
    t.integer "professor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professor_id"], name: "index_turmas_on_professor_id"
  end

  add_foreign_key "alunos", "turmas"
  add_foreign_key "materia", "professors"
  add_foreign_key "salas", "turmas"
  add_foreign_key "turmas", "professors"
end
