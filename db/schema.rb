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

ActiveRecord::Schema.define(version: 20_140_610_144_237) do

  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'urls', id: false, force: true do |t|
    t.text 'link',                   null: false
    t.string 'alias',                  null: false
    t.integer 'count',      default: 0
    t.string 'ip'
    t.datetime 'created_at'
    t.datetime 'updated_at'
    t.boolean 'public'
  end

  add_index 'urls', ['alias'], name: 'index_urls_on_alias', using: :btree
  add_index 'urls', ['link'], name: 'index_urls_on_link', using: :btree

end
