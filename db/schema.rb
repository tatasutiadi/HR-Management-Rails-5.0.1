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

ActiveRecord::Schema.define(version: 20170123132833) do

  create_table "companies", primary_key: "company_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "company_name",              limit: 30,    null: false
    t.text   "company_address",           limit: 65535, null: false
    t.text   "company_profile",           limit: 65535
    t.string "company_taxidentification", limit: 30
  end

  create_table "departements", primary_key: "departement_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "departement_code", limit: 4,  null: false
    t.string "departement_name", limit: 25, null: false
  end

  create_table "education_t", primary_key: "idp", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "nip",   limit: 10,    null: false
    t.string "t_pdk", limit: 20,    null: false
    t.text   "d_pdk", limit: 65535, null: false
  end

  create_table "employee", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "nip",           limit: 10,                                         null: false
    t.string   "nama",          limit: 40,                                         null: false
    t.string   "tmpt_lahir",    limit: 200,                                        null: false
    t.date     "tgl_lahir",                                                        null: false
    t.string   "jenis_kelamin", limit: 1,                                          null: false
    t.string   "alamat",        limit: 200,                                        null: false
    t.date     "tgl_masuk",                                                        null: false
    t.string   "id_bag",        limit: 4,                                          null: false
    t.string   "id_jab",        limit: 4,                                          null: false
    t.integer  "level_user",                                                       null: false
    t.string   "foto",          limit: 100,                                        null: false
    t.text     "tlpn",          limit: 65535,                                      null: false
    t.text     "nohp",          limit: 65535,                                      null: false
    t.string   "npwp",          limit: 30,                                         null: false
    t.integer  "id_agm",                                                           null: false
    t.integer  "kdpndidik",                                                        null: false
    t.string   "noktp",         limit: 25,                                         null: false
    t.string   "nojamsos",      limit: 25,                                         null: false
    t.string   "norek",         limit: 20,                                         null: false
    t.integer  "id_bank",                                                          null: false
    t.integer  "kdstatusk",                                                        null: false
    t.integer  "kdstatusp",                                                        null: false
    t.datetime "time_update",                 default: -> { "CURRENT_TIMESTAMP" }, null: false
  end

  create_table "master_bank", primary_key: "bank_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "bank_name", limit: 50, null: false
  end

  create_table "master_education", primary_key: "education_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "education_name", limit: 50, null: false
  end

  create_table "master_position", primary_key: "position_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "position_code",      limit: 10, null: false
    t.string "position_name",      limit: 20, null: false
    t.string "position_salary",    limit: 25, null: false
    t.string "position_allowance", limit: 25, null: false
  end

  create_table "master_religion", primary_key: "religion_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "religion_name", limit: 25, null: false
  end

  create_table "microposts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "content",    limit: 65535
    t.integer  "user_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "status_employee", primary_key: "statusemployee_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "statusemployee_name", limit: 30, null: false
  end

  create_table "status_marital", primary_key: "marital_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "marital_name", limit: 30, null: false
  end

  create_table "training_t", primary_key: "training_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string "employee_id",     limit: 15,    null: false
    t.date   "training_date",                 null: false
    t.string "training_topic",  limit: 100
    t.text   "organizer",       limit: 65535
    t.text   "training_result", limit: 65535
  end

  create_table "users", primary_key: "user_id", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fullname",      limit: 50
    t.string   "username",      limit: 50,  null: false
    t.string   "password",      limit: 100, null: false
    t.string   "salt_password", limit: 100
    t.string   "token",         limit: 100
    t.datetime "create_at",                 null: false
    t.datetime "update_at",                 null: false
  end

end
