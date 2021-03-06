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

ActiveRecord::Schema.define(version: 20171206033441) do

  create_table "admins", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "avaliadors", force: :cascade do |t|
    t.boolean "presidente"
    t.boolean "interno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscritors", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inscritos", force: :cascade do |t|
    t.string "nome"
    t.string "personagem"
    t.string "categoria"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nota", force: :cascade do |t|
    t.float "fantasia"
    t.float "similaridade"
    t.float "interpretacao"
    t.float "criatividade"
    t.float "baixo_custo"
    t.integer "inscrito_id"
    t.integer "avaliador_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["avaliador_id"], name: "index_nota_on_avaliador_id"
    t.index ["inscrito_id"], name: "index_nota_on_inscrito_id"
  end

  create_table "usuarios", force: :cascade do |t|
    t.string "nome_completo"
    t.string "cpf"
    t.string "password_digest"
    t.string "perfil_type"
    t.integer "perfil_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["perfil_type", "perfil_id"], name: "index_usuarios_on_perfil_type_and_perfil_id"
  end

end
