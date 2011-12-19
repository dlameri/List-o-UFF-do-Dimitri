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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111219035742) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "alunos", :force => true do |t|
    t.integer  "matricula"
    t.string   "nome"
    t.string   "situacao"
    t.integer  "curso_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "alunos", ["curso_id"], :name => "index_alunos_on_curso_id"

  create_table "cursos", :force => true do |t|
    t.string   "nome"
    t.integer  "vagas"
    t.integer  "unidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "cursos", ["unidade_id"], :name => "index_cursos_on_unidade_id"

  create_table "disciplinas", :force => true do |t|
    t.string   "nome"
    t.integer  "prioridade"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "apelido"
  end

  create_table "nota", :force => true do |t|
    t.integer  "aluno_id"
    t.integer  "disciplina_id"
    t.float    "pontuacao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nota", ["aluno_id"], :name => "index_nota_on_aluno_id"
  add_index "nota", ["disciplina_id"], :name => "index_nota_on_disciplina_id"

  create_table "unidades", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
