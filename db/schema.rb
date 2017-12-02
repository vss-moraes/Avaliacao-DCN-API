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

ActiveRecord::Schema.define(version: 20171202160052) do

  create_table "cosplays", force: :cascade do |t|
    t.float "qualidade"
    t.float "similaridade"
    t.float "interpretacao"
    t.float "criatividade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cospobres", force: :cascade do |t|
    t.float "baixo_custo"
    t.float "fantasia"
    t.float "personagem"
    t.float "interpretacao"
    t.float "criatividade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscritos", force: :cascade do |t|
    t.string "nome"
    t.string "personagem"
    t.string "inscricao_type"
    t.integer "inscricao_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["inscricao_type", "inscricao_id"], name: "index_inscritos_on_inscricao_type_and_inscricao_id"
  end

end
