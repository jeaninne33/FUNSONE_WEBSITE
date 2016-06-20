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

ActiveRecord::Schema.define(version: 20160610013222) do

  create_table "contactos", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "email",      limit: 255
    t.string   "tlf",        limit: 255
    t.text     "msj",        limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "ip",         limit: 65535
  end

  create_table "coordinadors", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.string   "foto",       limit: 255
    t.string   "twitter",    limit: 255
    t.string   "facebook",   limit: 255
    t.string   "correo",     limit: 255
    t.string   "linkd",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image",      limit: 255
    t.string   "cargo",      limit: 255
  end

  create_table "galleries", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "descripcion", limit: 65535
    t.string   "lugar",       limit: 255
    t.datetime "fecha"
  end

  create_table "identities", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.string   "provider",   limit: 255
    t.string   "uid",        limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "identities", ["user_id"], name: "index_identities_on_user_id", using: :btree

  create_table "institucions", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.text     "descripcion", limit: 65535
    t.text     "mision",      limit: 65535
    t.text     "vision",      limit: 65535
    t.string   "organigrama", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.text     "objetivos",   limit: 65535
    t.string   "logo",        limit: 255
    t.string   "tipo",        limit: 255
    t.string   "foto1",       limit: 255
    t.string   "foto2",       limit: 255
    t.string   "foto3",       limit: 255
    t.string   "foto4",       limit: 255
    t.string   "foto5",       limit: 255
  end

  create_table "noticia", force: :cascade do |t|
    t.string   "titulo",     limit: 255
    t.string   "categoria",  limit: 255
    t.string   "foto",       limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.text     "mensaje",    limit: 65535
  end

  create_table "paintings", force: :cascade do |t|
    t.string   "nombre",     limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "gallery_id", limit: 4
    t.string   "foto",       limit: 255
  end

  create_table "solicituds", force: :cascade do |t|
    t.string   "nombre1",    limit: 255
    t.string   "nombre2",    limit: 255
    t.string   "apellido1",  limit: 255
    t.string   "apellido2",  limit: 255
    t.string   "direccion",  limit: 255
    t.string   "telefono1",  limit: 255
    t.string   "telefono2",  limit: 255
    t.string   "cedula",     limit: 255
    t.string   "ayuda",      limit: 255
    t.text     "estado",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "municipio",  limit: 255
    t.date     "fecha_soli"
    t.date     "fecha_nac"
    t.string   "sexo",       limit: 255
  end

  create_table "tipos", force: :cascade do |t|
    t.text     "objetivo",     limit: 65535
    t.text     "requisito",    limit: 65535
    t.text     "tipo",         limit: 65535
    t.text     "contactos",    limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "nombre_ayuda", limit: 255
    t.text     "descripcion",  limit: 65535
    t.string   "foto1",        limit: 255
    t.string   "foto2",        limit: 255
    t.string   "foto3",        limit: 255
    t.string   "foto4",        limit: 255
    t.string   "foto5",        limit: 255
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end
