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

ActiveRecord::Schema.define(version: 20150710162248) do

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

  create_table "tipos", force: :cascade do |t|
    t.text     "objetivo",     limit: 65535
    t.text     "requisito",    limit: 65535
    t.text     "tipo",         limit: 65535
    t.text     "contactos",    limit: 65535
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "nombre_ayuda", limit: 255
  end

end
