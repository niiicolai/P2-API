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

ActiveRecord::Schema.define(version: 2020_04_27_011746) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "completed_activities", force: :cascade do |t|
    t.integer "activity_id"
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_completed_activities_on_participant_id"
  end

  create_table "failed_activities", force: :cascade do |t|
    t.integer "activity_id"
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_failed_activities_on_participant_id"
  end

  create_table "interactions", force: :cascade do |t|
    t.string "date_created"
    t.string "method"
    t.string "message"
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_interactions_on_participant_id"
  end

  create_table "participants", force: :cascade do |t|
    t.string "date_created"
  end

  create_table "ratings", force: :cascade do |t|
    t.string "date_created"
    t.string "question"
    t.integer "rate"
    t.bigint "participant_id"
    t.index ["participant_id"], name: "index_ratings_on_participant_id"
  end

end
