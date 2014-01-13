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

ActiveRecord::Schema.define(version: 20140113151558) do

  create_table "aportacions", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "dni_cif"
    t.string   "dir1"
    t.string   "dir2"
    t.string   "cp"
    t.string   "localidad"
    t.string   "provincia"
    t.string   "telefono"
    t.string   "cantidad"
    t.boolean  "en_mecenas"
    t.boolean  "certificado"
    t.boolean  "comprobado"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "microposts", force: true do |t|
    t.string   "content"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
