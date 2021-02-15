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

ActiveRecord::Schema.define(version: 2021_02_12_151117) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "node_polling_responses", force: :cascade do |t|
    t.json "response"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "node_versions", force: :cascade do |t|
    t.integer "node_id"
    t.integer "version"
    t.string "aasm_state"
    t.json "node"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["node_id"], name: "index_node_versions_on_node_id"
  end

  create_table "nodes", force: :cascade do |t|
    t.string "external_id"
    t.string "name"
    t.string "aasm_state"
    t.integer "total_pods"
    t.integer "errored_pods"
    t.integer "healthy_pods"
    t.integer "restarting_pods"
    t.string "size"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["external_id"], name: "index_nodes_on_external_id"
  end

end
