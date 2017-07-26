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

ActiveRecord::Schema.define(version: 20170726055914) do

  create_table "characters", force: :cascade do |t|
    t.integer  "rarity"
    t.integer  "level_max"
    t.string   "name"
    t.integer  "growth_type"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "hp"
    t.integer  "price"
    t.integer  "exp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["rarity"], name: "index_characters_on_rarity"
  end

  create_table "enemies", force: :cascade do |t|
    t.integer  "level"
    t.integer  "character_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "growths", force: :cascade do |t|
    t.integer  "growth_type"
    t.integer  "level"
    t.integer  "exp"
    t.integer  "attack"
    t.integer  "defense"
    t.integer  "hp"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["exp"], name: "index_growths_on_exp"
    t.index ["growth_type", "level"], name: "index_growths_on_growth_type_and_level"
  end

  create_table "quest_areas", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quest_incentives", force: :cascade do |t|
    t.integer  "quest_id"
    t.string   "item_type"
    t.integer  "item_id"
    t.integer  "num"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_quest_incentives_on_quest_id"
  end

  create_table "quest_wave_enemies", force: :cascade do |t|
    t.integer  "quest_wave_id"
    t.integer  "enemy_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["quest_wave_id"], name: "index_quest_wave_enemies_on_quest_wave_id"
  end

  create_table "quest_waves", force: :cascade do |t|
    t.integer  "quest_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quest_id"], name: "index_quest_waves_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.integer  "quest_area_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["quest_area_id"], name: "index_quests_on_quest_area_id"
  end

  create_table "user_auths", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "auth_key"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_auths_on_user_id"
  end

  create_table "user_characters", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "character_id"
    t.integer  "level"
    t.integer  "exp"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id", "character_id"], name: "index_user_characters_on_user_id_and_character_id"
  end

  create_table "user_moneys", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "remain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_user_moneys_on_user_id"
  end

  create_table "user_quests", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "quest_id"
    t.datetime "cleared_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id", "quest_id"], name: "index_user_quests_on_user_id_and_quest_id"
  end

  create_table "user_sessions", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "session_key"
    t.datetime "login_at"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["user_id"], name: "index_user_sessions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.integer  "level"
    t.integer  "exp"
    t.integer  "stamina"
    t.string   "name"
    t.datetime "last_play_at"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
