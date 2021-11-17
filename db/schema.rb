ActiveRecord::Schema.define(version: 2021_10_25_214159) do

    create_table "records", force: :cascade do |t|
        t.string "key_name"
        t.string "result"
    end
  
  end