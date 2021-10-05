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

ActiveRecord::Schema.define(version: 2021_10_05_152644) do

  create_table "invoice_items", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.decimal "price"
    t.integer "qty"
    t.integer "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_invoice_items_on_invoice_id"
  end

  create_table "invoices", force: :cascade do |t|
    t.string "from_full_name"
    t.string "from_address"
    t.string "from_email"
    t.string "from_phone"
    t.string "to_full_name"
    t.string "to_address"
    t.string "to_email"
    t.string "to_phone"
    t.string "status"
    t.decimal "discount"
    t.decimal "vat"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "qetquotes", force: :cascade do |t|
    t.boolean "ownhome"
    t.boolean "deciding"
    t.boolean "comparing"
    t.boolean "ready"
    t.string "currentinscomp"
    t.integer "currentrate"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "aptnum"
    t.string "city"
    t.string "state"
    t.integer "zip2"
    t.string "propertytype"
    t.integer "annualspend"
    t.string "email"
    t.integer "phone", limit: 8
    t.string "firstname"
    t.string "lastname"
    t.boolean "primaryres"
    t.integer "homeprice"
  end

  create_table "quotes", force: :cascade do |t|
    t.string "date"
    t.string "firstname"
    t.string "lastname"
    t.string "email"
    t.string "phone"
    t.string "readyornot", default: "Sent"
    t.string "string", default: "Sent"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "password_digest"
    t.string "firstname"
    t.string "lastname"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  add_foreign_key "invoice_items", "invoices"
end
