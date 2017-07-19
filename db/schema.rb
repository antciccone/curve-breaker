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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170719210809) do
=======
ActiveRecord::Schema.define(version: 20170717202305) do
>>>>>>> 277462dce602ed2a89262bf0070ec1ac20821c03

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "act_practices", force: :cascade do |t|
    t.string   "date"
    t.string   "math"
    t.string   "english"
    t.string   "science"
    t.string   "reading"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_act_practices_on_user_id", using: :btree
  end

  create_table "act_scores", force: :cascade do |t|
    t.string   "date"
    t.string   "math"
    t.string   "english"
    t.string   "reading"
    t.string   "science"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_act_scores_on_user_id", using: :btree
  end

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

  create_table "sat_practices", force: :cascade do |t|
    t.string   "date"
    t.string   "math"
    t.string   "english"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sat_practices_on_user_id", using: :btree
<<<<<<< HEAD
=======
  end

  create_table "sat_scores", force: :cascade do |t|
    t.string   "date"
    t.string   "math"
    t.string   "english"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sat_scores_on_user_id", using: :btree
>>>>>>> 277462dce602ed2a89262bf0070ec1ac20821c03
  end

  create_table "sat_scores", force: :cascade do |t|
    t.string   "date"
    t.string   "math"
    t.string   "english"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_sat_scores_on_user_id", using: :btree
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
    t.string   "rate"
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
    t.string   "parent_name"
    t.string   "parent_number"
    t.string   "parent_email"
  end

  add_foreign_key "act_practices", "users"
  add_foreign_key "act_scores", "users"
  add_foreign_key "lessons", "teachers"
  add_foreign_key "lessons", "users"
  add_foreign_key "roles", "users"
  add_foreign_key "sat_practices", "users"
  add_foreign_key "sat_scores", "users"
<<<<<<< HEAD
=======
  add_foreign_key "study_guides", "users"
>>>>>>> 277462dce602ed2a89262bf0070ec1ac20821c03
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teacher_students", "teachers"
  add_foreign_key "teacher_students", "users"
end
