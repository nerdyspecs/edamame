# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_07_12_225927) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "customer_vehicle_insurances", force: :cascade do |t|
    t.string "customer_name"
    t.bigint "customer_vehicles_id", null: false
    t.bigint "insurances_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
    t.integer "order_status"
    t.bigint "orders_id"
    t.index ["customer_vehicles_id"], name: "index_customer_vehicle_insurances_on_customer_vehicles_id"
    t.index ["insurances_id"], name: "index_customer_vehicle_insurances_on_insurances_id"
    t.index ["orders_id"], name: "index_customer_vehicle_insurances_on_orders_id"
  end

  create_table "customer_vehicles", force: :cascade do |t|
    t.string "customer_name"
    t.string "vehicle_plate"
    t.string "vehicle_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "customer_vehicle_insurances_id"
    t.index ["customer_vehicle_insurances_id"], name: "index_customer_vehicles_on_customer_vehicle_insurances_id"
  end

  create_table "customers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_customers_on_user_id"
  end

  create_table "employee_customers", force: :cascade do |t|
    t.bigint "customer_id", null: false
    t.bigint "employee_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_employee_customers_on_customer_id"
    t.index ["employee_id"], name: "index_employee_customers_on_employee_id"
  end

  create_table "employees", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "insurances", force: :cascade do |t|
    t.string "insurance_company_name"
    t.string "insurance_company_description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "price"
  end

  create_table "invoices", force: :cascade do |t|
    t.bigint "employer_id", null: false
    t.bigint "customer_id"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "orders_id"
    t.index ["customer_id"], name: "index_invoices_on_customer_id"
    t.index ["employer_id"], name: "index_invoices_on_employer_id"
    t.index ["orders_id"], name: "index_invoices_on_orders_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.bigint "service_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["service_id"], name: "index_jobs_on_service_id"
  end

  create_table "jobs_parts", force: :cascade do |t|
    t.bigint "jobs_id", null: false
    t.bigint "parts_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jobs_id"], name: "index_jobs_parts_on_jobs_id"
    t.index ["parts_id"], name: "index_jobs_parts_on_parts_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "employee_id", null: false
    t.bigint "customer_id", null: false
    t.string "title"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_orders_on_customer_id"
    t.index ["employee_id"], name: "index_orders_on_employee_id"
  end

  create_table "parts", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sales_vehicles", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "description"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_status"
    t.bigint "orders_id"
    t.index ["orders_id"], name: "index_sales_vehicles_on_orders_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "customer_info"
    t.string "service_name"
    t.string "service_description"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_status"
    t.bigint "orders_id"
    t.index ["orders_id"], name: "index_services_on_orders_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.string "company"
    t.integer "role"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "customer_vehicle_insurances", "customer_vehicles", column: "customer_vehicles_id"
  add_foreign_key "customer_vehicle_insurances", "insurances", column: "insurances_id"
  add_foreign_key "customers", "users"
  add_foreign_key "employee_customers", "customers"
  add_foreign_key "employee_customers", "employees"
  add_foreign_key "employees", "users"
  add_foreign_key "invoices", "users", column: "customer_id"
  add_foreign_key "invoices", "users", column: "employer_id"
  add_foreign_key "jobs", "services"
  add_foreign_key "jobs_parts", "jobs", column: "jobs_id"
  add_foreign_key "jobs_parts", "parts", column: "parts_id"
  add_foreign_key "orders", "customers"
  add_foreign_key "orders", "employees"
end
