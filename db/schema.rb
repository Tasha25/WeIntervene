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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131218110046) do

  create_table "disciplinary_responses", :force => true do |t|
    t.string   "code"
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "disciplinary_responses_incident_logs", :id => false, :force => true do |t|
    t.integer "disciplinary_response_id"
    t.integer "incident_log_id"
  end

  create_table "guidance_interventions", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "guidance_interventions_incident_logs", :id => false, :force => true do |t|
    t.integer "guidance_intervention_id"
    t.integer "incident_log_id"
  end

  create_table "incident_logs", :force => true do |t|
    t.integer  "student_id"
    t.integer  "user_id"
    t.text     "comment"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "incident_logs_infractions", :id => false, :force => true do |t|
    t.integer "incident_log_id"
    t.integer "infraction_id"
  end

  create_table "infractions", :force => true do |t|
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "infractions_service_providers", :id => false, :force => true do |t|
    t.integer "infraction_id"
    t.integer "service_provider_id"
  end

  create_table "parents", :force => true do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.string "suffix"
    t.string "email"
    t.string "street1"
    t.string "street2"
    t.string "city"
    t.string "state"
    t.string "zip_code"
    t.string "work_phone"
    t.string "cell_phone"
    t.string "guardian_role"
  end

  create_table "parents_students", :id => false, :force => true do |t|
    t.integer "parent_id"
    t.integer "student_id"
  end

  create_table "referrals", :force => true do |t|
    t.string   "comment"
    t.integer  "user_id"
    t.integer  "student_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "referrals_service_providers", :id => false, :force => true do |t|
    t.integer "referral_id"
    t.integer "service_provider_id"
  end

  create_table "roles", :force => true do |t|
    t.string   "title"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id"
    t.integer "user_id"
  end

  create_table "school_districts", :force => true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
    t.integer  "school_system_id"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "school_systems", :force => true do |t|
    t.string   "name"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "schools", :force => true do |t|
    t.integer  "district"
    t.string   "name"
    t.string   "mission"
    t.string   "image_url"
    t.string   "website"
    t.string   "email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "work_phone"
    t.string   "fax"
    t.integer  "school_district_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "service_categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "service_categories_service_providers", :id => false, :force => true do |t|
    t.integer "service_category_id"
    t.integer "service_provider_id"
  end

  create_table "service_providers", :force => true do |t|
    t.string   "name"
    t.string   "mission"
    t.string   "image_url"
    t.string   "website"
    t.string   "providers_email"
    t.string   "contact_person"
    t.string   "contact_email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "work_phone"
    t.string   "fax"
    t.string   "infraction_supported"
    t.text     "other"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "students", :force => true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "identification_number"
    t.string   "date_of_birth"
    t.integer  "school_id"
    t.string   "image_url"
    t.string   "email"
    t.string   "street1"
    t.string   "street2"
    t.string   "city"
    t.string   "state"
    t.string   "zip_code"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "counselor"
    t.string   "grade_level"
    t.string   "offical"
    t.string   "cohort"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "email"
    t.integer  "school_id"
    t.integer  "service_provider_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
    t.string   "encrypted_password"
    t.string   "salt"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true

end
