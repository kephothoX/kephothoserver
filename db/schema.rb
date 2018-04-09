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

ActiveRecord::Schema.define(version: 20180402194048) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "contacts", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.text "Comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drup_cache_container", primary_key: "cid", id: :string, limit: 255, default: "", comment: "Primary Key: Unique cache ID.", force: :cascade, comment: "Storage for the cache API." do |t|
    t.binary "data", comment: "A collection of data to cache."
    t.integer "expire", default: 0, null: false, comment: "A Unix timestamp indicating when the cache entry should expire, or -1 for never."
    t.decimal "created", precision: 14, scale: 3, default: "0.0", null: false, comment: "A timestamp with millisecond precision indicating when the cache entry was created."
    t.integer "serialized", limit: 2, default: 0, null: false, comment: "A flag to indicate whether content is serialized (1) or not (0)."
    t.text "tags", comment: "Space-separated list of cache tags for this entry."
    t.string "checksum", limit: 255, null: false, comment: "The tag invalidation checksum when this entry was saved."
    t.index ["created"], name: "drup_cache_container__created__idx"
    t.index ["expire"], name: "drup_cache_container__expire__idx"
  end

  create_table "entities", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.string "Job_Title"
    t.string "Company"
    t.string "Logo"
    t.string "Image"
    t.string "Title_Offer"
    t.text "Description"
    t.string "Website"
    t.datetime "Start_Date"
    t.datetime "Expiry_Date"
    t.string "Phone_Number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "signups", force: :cascade do |t|
    t.string "Name"
    t.string "Email"
    t.string "Username"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slugs", force: :cascade do |t|
    t.string "Company"
    t.string "Logo"
    t.string "Duration"
    t.string "Category"
    t.string "Image"
    t.string "Title"
    t.text "Details"
    t.datetime "Starts"
    t.datetime "Expires"
    t.string "Website"
    t.integer "Views"
    t.integer "Rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
