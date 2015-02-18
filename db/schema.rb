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

ActiveRecord::Schema.define(version: 20150208044555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.integer  "account_owner"
    t.string   "account_name"
    t.integer  "number_of_employees"
    t.integer  "phone_number",        limit: 8
    t.string   "website"
    t.string   "ownership_type"
    t.string   "billing_address"
    t.string   "shipping_address"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_matured"
    t.integer  "lead_id"
  end

  add_index "accounts", ["company_id"], name: "index_accounts_on_company_id", using: :btree

  create_table "activities", force: :cascade do |t|
    t.integer  "trackable_id"
    t.string   "trackable_type"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "key"
    t.text     "parameters"
    t.integer  "recipient_id"
    t.string   "recipient_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "activities", ["owner_id", "owner_type"], name: "index_activities_on_owner_id_and_owner_type", using: :btree
  add_index "activities", ["recipient_id", "recipient_type"], name: "index_activities_on_recipient_id_and_recipient_type", using: :btree
  add_index "activities", ["trackable_id", "trackable_type"], name: "index_activities_on_trackable_id_and_trackable_type", using: :btree

  create_table "call_logs", force: :cascade do |t|
    t.string   "call_result"
    t.string   "subject"
    t.string   "call_type"
    t.string   "call_purpose"
    t.datetime "call_start_time"
    t.integer  "call_duration"
    t.integer  "lead_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_id"
    t.integer  "user_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string   "company_name"
    t.string   "company_address"
    t.integer  "contact_number1", limit: 8
    t.integer  "contact_number2", limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "address"
    t.integer  "mobile_no",            limit: 8
    t.integer  "landline_no",          limit: 8
    t.string   "contactable_type"
    t.integer  "contactable_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email_id"
    t.string   "contact_relationship"
    t.integer  "account_id"
  end

  create_table "crm_customers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "address"
    t.float    "amount_paid"
    t.date     "subscription_start"
    t.date     "subscription_ends"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "customer_type"
  end

  create_table "crm_transactions", force: :cascade do |t|
    t.float    "amount"
    t.datetime "transaction_time"
    t.integer  "company_id"
    t.integer  "contact_type"
    t.integer  "contact_id"
    t.integer  "matured_by"
    t.string   "executive_type"
    t.string   "transaction_type"
    t.string   "micr_code"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "account_id"
    t.integer  "lead_id"
  end

  add_index "crm_transactions", ["company_id"], name: "index_crm_transactions_on_company_id", using: :btree
  add_index "crm_transactions", ["contact_id", "contact_type"], name: "index_crm_transactions_on_contact_id_and_contact_type", using: :btree

  create_table "employees", force: :cascade do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.integer  "mobile_no",         limit: 8
    t.string   "address"
    t.integer  "age"
    t.integer  "team_leader_id"
    t.integer  "sales_executve_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: :cascade do |t|
    t.string   "title"
    t.datetime "starts_at"
    t.text     "description"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contact_id"
  end

  add_index "events", ["company_id"], name: "index_events_on_company_id", using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "inventory_additions", force: :cascade do |t|
    t.integer  "product_id"
    t.datetime "addition_date"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "company_id"
    t.integer  "inventory_id"
  end

  create_table "leads", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.boolean  "matured"
    t.datetime "matured_at"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "lead_source"
    t.string   "lead_status"
    t.datetime "opening_date"
    t.integer  "user_id"
  end

  create_table "notification_settings", force: :cascade do |t|
    t.boolean  "notification_flag", default: false
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "contact_id"
    t.string   "body"
    t.datetime "notification_time"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "subject"
    t.integer  "user_id"
  end

  add_index "notifications", ["company_id"], name: "index_notifications_on_company_id", using: :btree
  add_index "notifications", ["contact_id"], name: "index_notifications_on_contact_id", using: :btree

  create_table "partial_payments", force: :cascade do |t|
    t.integer  "amount_paid"
    t.integer  "crm_transaction_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "product_transactions", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "crm_transaction_id"
    t.float    "price"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "lead_id"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.float    "min_cost"
    t.float    "max_cost"
    t.string   "description"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

  create_table "rails_admin_histories", force: :cascade do |t|
    t.text     "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      limit: 2
    t.integer  "year",       limit: 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], name: "index_rails_admin_histories", using: :btree

  create_table "sales_executives", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "team_leader_id"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "special_occasions", force: :cascade do |t|
    t.string   "title"
    t.string   "body"
    t.date     "occasion_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "contact_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "taggings", ["contact_id"], name: "index_taggings_on_contact_id", using: :btree
  add_index "taggings", ["tag_id"], name: "index_taggings_on_tag_id", using: :btree

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "targets", force: :cascade do |t|
    t.integer  "amount",       default: 0
    t.integer  "achived",      default: 0
    t.integer  "company_id"
    t.integer  "target_month"
    t.integer  "target_year"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "team_leaders", force: :cascade do |t|
    t.integer  "employee_id"
    t.integer  "user_id"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_field_values", force: :cascade do |t|
    t.integer  "transaction_id"
    t.integer  "transaction_field_id"
    t.string   "transaction_field_value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "transaction_fields", force: :cascade do |t|
    t.string   "field_name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "address"
    t.integer  "mobile_no",              limit: 8
    t.integer  "account_type"
    t.integer  "company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                            default: "", null: false
    t.string   "encrypted_password",               default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                    default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.integer  "team_leader_id"
  end

  add_index "users", ["company_id"], name: "index_users_on_company_id", using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
