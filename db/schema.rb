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

ActiveRecord::Schema.define(version: 2018_09_16_093046) do

  create_table "influencers", force: :cascade do |t|
    t.string "influencer_full_name"
    t.string "influencer_instagram_username"
    t.string "influencer_instagram_profile_image"
    t.integer "statistics_followers"
    t.integer "statistics_engagement"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "starred_influencers", force: :cascade do |t|
    t.integer "influencer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["influencer_id"], name: "index_starred_influencers_on_influencer_id"
  end
end
