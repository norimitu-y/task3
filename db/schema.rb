

ActiveRecord::Schema.define(version: 20181022124823) do

  enable_extension "plpgsql"

  create_table "speaks", force: :cascade do |t|
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
