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

ActiveRecord::Schema.define(version: 20170627215615) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "lessons", force: :cascade do |t|
    t.text     "notes"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "teacher_id"
    t.string   "length"
    t.text     "homework"
    t.index ["teacher_id"], name: "index_lessons_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_lessons_on_user_id", using: :btree
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.index ["user_id"], name: "index_roles_on_user_id", using: :btree
  end

  create_table "scores", force: :cascade do |t|
    t.string   "act"
    t.string   "sat"
    t.string   "practice_sat"
    t.string   "practice_act"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "sat_math"
    t.string   "sat_english"
    t.string   "psat_math"
    t.string   "psat_english"
    t.index ["user_id"], name: "index_scores_on_user_id", using: :btree
  end

  create_table "study_guides", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["user_id"], name: "index_study_guides_on_user_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id", using: :btree
  end

  create_table "teacher_students", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
    t.index ["teacher_id"], name: "index_teacher_students_on_teacher_id", using: :btree
    t.index ["user_id"], name: "index_teacher_students_on_user_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "grade"
    t.string   "address"
    t.string   "phone"
    t.string   "status"
    t.string   "rate"
  end

  add_foreign_key "lessons", "teachers"
  add_foreign_key "lessons", "users"
  add_foreign_key "roles", "users"
  add_foreign_key "study_guides", "users"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teacher_students", "teachers"
  add_foreign_key "teacher_students", "users"
end
