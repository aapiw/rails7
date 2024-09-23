# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2024_09_11_130111) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "orders", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "version", default: -> { "nextval('global_seqs'::regclass)" }
    t.bigint "version_created", default: -> { "nextval('global_seqs'::regclass)" }
    t.datetime "created_at_server", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "updated_at_server", precision: nil, default: -> { "CURRENT_TIMESTAMP" }
    t.datetime "deleted_at_server", precision: nil
    t.integer "push_id"
    t.index ["deleted_at_server"], name: "index_orders_on_deleted_at_server"
  end

end
