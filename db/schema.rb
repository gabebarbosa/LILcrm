# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160708124039) do

  create_table "atendimentos", force: :cascade do |t|
    t.string   "assunto"
    t.text     "descricao"
    t.string   "status"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "cliente_id"
    t.integer  "tipoatendimento_id"
    t.integer  "user_id"
  end

  create_table "caracteristicas", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cnpj"
    t.string   "contato"
    t.string   "telefone"
    t.string   "email"
    t.string   "cidade"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "comentarios", force: :cascade do |t|
    t.string   "user"
    t.text     "descricao"
    t.integer  "atendimento_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "resposta", force: :cascade do |t|
    t.text     "descricao"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "atendimento_id"
    t.integer  "user_id"
  end

  create_table "tipoatendimentos", force: :cascade do |t|
    t.string   "descricao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

end
