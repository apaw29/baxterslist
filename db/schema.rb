
ActiveRecord::Schema.define(:version => 20160511020429) do

  create_table "deals", :force => true do |t|
    t.string   "title"
    t.string   "category"
    t.string   "price"
    t.string   "description"
    t.string   "contactname"
    t.string   "contactnumber"
    t.string   "contactemail"
    t.string   "postdate"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

end
