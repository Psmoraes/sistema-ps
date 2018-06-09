# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180609211346) do

  create_table "atendimentos", force: :cascade do |t|
    t.text "situacao"
    t.integer "paciente_id"
    t.string "sintomas"
    t.time "tempoCheg"
    t.string "tipoAtendimento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["paciente_id", "created_at"], name: "index_atendimentos_on_paciente_id_and_created_at"
    t.index ["paciente_id"], name: "index_atendimentos_on_paciente_id"
  end

  create_table "hospitals", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.string "cnpj"
    t.string "telefone"
    t.string "email"
    t.string "senha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nome"
    t.string "endereco"
    t.date "data_nasc"
    t.string "rg"
    t.string "cpf"
    t.string "email"
    t.string "senha"
    t.string "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
