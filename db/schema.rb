ActiveRecord::Schema.define(version: 20140610144237) do

  create_table "urls", id: false, force: true do |t|
    t.text     "link",                   null: false
    t.string   "alias",                  null: false
    t.integer  "count",      default: 0
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "public"
  end

  add_index "urls", ["alias"], name: "index_urls_on_alias"
  add_index "urls", ["link"], name: "index_urls_on_link"

end
