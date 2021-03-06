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

ActiveRecord::Schema.define(version: 2019_07_07_141419) do

  create_table "chat_rooms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "post_to_user"
    t.string "post_content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_spaces", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "from_user_id"
    t.integer "to_user_id"
    t.integer "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "uid"
    t.string "path"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "private_users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "tel"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "uid"
    t.integer "sex", null: false
    t.date "birth"
    t.index ["tel"], name: "index_private_users_on_tel", unique: true
    t.index ["uid"], name: "index_private_users_on_uid", unique: true
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "nickname"
    t.string "school"
    t.string "job"
    t.string "profile"
    t.integer "iine"
    t.integer "private_user_id"
    t.integer "chat_space_id"
    t.integer "photo_id"
    t.integer "face_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "personality"
    t.index ["private_user_id"], name: "index_users_on_private_user_id", unique: true
  end

end
