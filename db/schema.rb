# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090207194551) do

  create_table "ad_info", :primary_key => "ad_id", :force => true do |t|
    t.string   "ad_tmpl",          :limit => 30
    t.string   "ad_file"
    t.string   "ad_url"
    t.text     "ad_text1"
    t.text     "ad_text2"
    t.integer  "views_left",       :limit => 11,                               :default => 0
    t.date     "first_day"
    t.integer  "perpetual",        :limit => 1,                                :default => 0
    t.datetime "last_seen"
    t.integer  "sponsor",          :limit => 11
    t.integer  "active",           :limit => 1,                                :default => 0
    t.integer  "example",          :limit => 1,                                :default => 0
    t.string   "ad_title"
    t.datetime "submitted_on"
    t.integer  "view_count",       :limit => 11,                               :default => 0
    t.integer  "click_throughs",   :limit => 11,                               :default => 0
    t.integer  "judged",           :limit => 1,                                :default => 0
    t.text     "reason"
    t.integer  "paid",             :limit => 1,                                :default => 0
    t.integer  "purchase_size",    :limit => 11,                               :default => 0
    t.decimal  "purchase_price",                 :precision => 7, :scale => 2, :default => 0.0
    t.integer  "judger",           :limit => 11
    t.integer  "approved",         :limit => 1
    t.integer  "impression_cache", :limit => 11,                               :default => 0
    t.integer  "pos",              :limit => 5,                                :default => 1,   :null => false
    t.string   "ad_sid",           :limit => 20
  end

  add_index "ad_info", ["active", "last_seen", "ad_tmpl"], :name => "seen_active"
  add_index "ad_info", ["pos"], :name => "pos"

  create_table "ad_log", :primary_key => "req_num", :force => true do |t|
    t.integer "req_time",   :limit => 11, :default => 0,  :null => false
    t.integer "requestor",  :limit => 11, :default => 0,  :null => false
    t.string  "request_ip", :limit => 16, :default => "", :null => false
    t.integer "ad_id",      :limit => 11, :default => 0,  :null => false
    t.string  "req_type",   :limit => 20, :default => "", :null => false
  end

  create_table "ad_payments", :id => false, :force => true do |t|
    t.integer "ad_id",      :limit => 11,                               :default => 0,   :null => false
    t.string  "order_id",   :limit => 50,                               :default => "",  :null => false
    t.decimal "cost",                     :precision => 7, :scale => 2, :default => 0.0, :null => false
    t.string  "pay_type",   :limit => 10,                               :default => "",  :null => false
    t.date    "auth_date",                                                               :null => false
    t.date    "final_date"
    t.integer "paid",       :limit => 1
  end

  create_table "ad_types", :primary_key => "type_template", :force => true do |t|
    t.string  "type_name",           :limit => 50,                               :default => "",      :null => false
    t.string  "short_desc",                                                      :default => "",      :null => false
    t.text    "submit_instructions"
    t.integer "max_file_size",       :limit => 11
    t.integer "max_text1_chars",     :limit => 5
    t.integer "max_text2_chars",     :limit => 5
    t.integer "max_title_chars",     :limit => 5
    t.decimal "cpm",                               :precision => 7, :scale => 2
    t.integer "active",              :limit => 1,                                :default => 0,       :null => false
    t.integer "min_purchase_size",   :limit => 7
    t.integer "max_purchase_size",   :limit => 7,                                :default => 1000000
    t.integer "pos",                 :limit => 5,                                :default => 1,       :null => false
    t.integer "allow_discussion",    :limit => 1,                                :default => 0
  end

  create_table "admin_tools", :primary_key => "tool", :force => true do |t|
    t.integer "pos",      :limit => 2,  :default => 0,  :null => false
    t.string  "dispname", :limit => 60, :default => "", :null => false
    t.string  "menuname", :limit => 60, :default => "", :null => false
    t.string  "perm",     :limit => 50, :default => "", :null => false
    t.string  "func",     :limit => 50, :default => "", :null => false
    t.integer "is_box",   :limit => 1,  :default => 0
  end

  create_table "advertisers", :primary_key => "advertisor_id", :force => true do |t|
    t.string "contact_name",                :default => "", :null => false
    t.string "contact_phone", :limit => 20
    t.string "company_name",                :default => "", :null => false
    t.string "snail_mail"
  end

  create_table "blocks", :id => false, :force => true do |t|
    t.string "bid",         :limit => 30,  :default => "",        :null => false
    t.text   "block"
    t.string "aid",         :limit => 20
    t.text   "description"
    t.string "category",    :limit => 128, :default => "general", :null => false
    t.string "theme",       :limit => 32,  :default => "default", :null => false
    t.string "language",    :limit => 10,  :default => "en",      :null => false
  end

  create_table "box", :primary_key => "boxid", :force => true do |t|
    t.string  "title",       :limit => 50, :default => "", :null => false
    t.text    "content",                                   :null => false
    t.text    "description"
    t.string  "template",    :limit => 39, :default => "", :null => false
    t.integer "user_choose", :limit => 1,  :default => 0
  end

  add_index "box", ["user_choose"], :name => "user_choose_idx"

  create_table "cache_time", :primary_key => "resource", :force => true do |t|
    t.integer "last_update", :limit => 11, :default => 0, :null => false
  end

  create_table "commentcodes", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 32
  end

  create_table "commentratings", :id => false, :force => true do |t|
    t.integer  "uid",         :limit => 1,  :default => 0,  :null => false
    t.integer  "rating",      :limit => 11, :default => 0,  :null => false
    t.integer  "cid",         :limit => 15, :default => 0,  :null => false
    t.string   "sid",         :limit => 30, :default => "", :null => false
    t.datetime "rating_time"
    t.string   "rater_ip",    :limit => 16, :default => "", :null => false
  end

  create_table "comments", :force => true do |t|
    t.string   "sid",        :limit => 30,                                :default => "", :null => false
    t.integer  "cid",        :limit => 15,                                :default => 0,  :null => false
    t.integer  "pid",        :limit => 15,                                :default => 0,  :null => false
    t.datetime "date"
    t.integer  "rank",       :limit => 1
    t.string   "subject",    :limit => 50,                                :default => "", :null => false
    t.text     "comment",                                                                 :null => false
    t.integer  "pending",    :limit => 1,                                 :default => 0
    t.integer  "uid",        :limit => 1,                                 :default => -1, :null => false
    t.decimal  "points",                    :precision => 4, :scale => 2
    t.integer  "lastmod",    :limit => 1,                                 :default => -1
    t.integer  "sig_status", :limit => 1,                                 :default => 1
    t.string   "sig",        :limit => 160
    t.string   "commentip",  :limit => 16
    t.decimal  "pre_rating",                :precision => 4, :scale => 2
    t.integer  "lft",        :limit => 11
    t.integer  "rgt",        :limit => 11
    t.integer  "root_id",    :limit => 11
    t.integer  "parent_id",  :limit => 11
    t.integer  "story_id",   :limit => 11
  end

  add_index "comments", ["id"], :name => "id", :unique => true
  add_index "comments", ["uid", "pid"], :name => "stuff"

  create_table "commentstats", :id => false, :force => true do |t|
    t.integer "uid",          :limit => 11, :default => 0,    :null => false
    t.string  "nickname",     :limit => 50
    t.string  "country",      :limit => 2,  :default => "US", :null => false
    t.integer "num_comments", :limit => 21, :default => 0,    :null => false
  end

  create_table "country", :primary_key => "iso", :force => true do |t|
    t.string  "name",           :limit => 80, :default => "", :null => false
    t.string  "printable_name", :limit => 80, :default => "", :null => false
    t.string  "iso3",           :limit => 3
    t.integer "numcode",        :limit => 6
  end

  create_table "cron", :primary_key => "name", :force => true do |t|
    t.string   "func",      :limit => 20
    t.integer  "run_every", :limit => 11
    t.datetime "last_run"
    t.integer  "enabled",   :limit => 1,  :default => 1
    t.integer  "is_box",    :limit => 1,  :default => 0
  end

  create_table "diaries_rec", :id => false, :force => true do |t|
    t.string   "sid",     :limit => 20
    t.integer  "uid",     :limit => 11
    t.datetime "time"
    t.integer  "unrec",   :limit => 4
    t.integer  "expired", :limit => 4
    t.float    "weight"
  end

  add_index "diaries_rec", ["expired", "sid"], :name => "recview_idx"
  add_index "diaries_rec", ["sid", "uid"], :name => "siduid_idx"

  create_table "diaries_rec_current", :id => false, :force => true do |t|
    t.string  "sid",     :limit => 20
    t.float   "score"
    t.integer "votes",   :limit => 11
    t.integer "nonus",   :limit => 4
    t.integer "expired", :limit => 4
    t.string  "country", :limit => 2
  end

  add_index "diaries_rec_current", ["nonus", "score"], :name => "diaries_rec_cur_idx"
  add_index "diaries_rec_current", ["score"], :name => "diaries_rec_cur_sc_idx"

  create_table "diaries_recent_prefs", :id => false, :force => true do |t|
    t.integer "uid",         :limit => 11, :default => 0, :null => false
    t.integer "num_diaries", :limit => 3,  :default => 0, :null => false
  end

  add_index "diaries_recent_prefs", ["uid"], :name => "diaries_recent_prefs_uid_pid"

  create_table "displaycodes", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 32
  end

  create_table "editcategorycodes", :primary_key => "code", :force => true do |t|
    t.string  "name",    :limit => 32
    t.integer "orderby", :limit => 1,  :default => 0, :null => false
  end

  create_table "hooks", :id => false, :force => true do |t|
    t.string  "hook",    :limit => 50, :default => "", :null => false
    t.string  "func",    :limit => 50, :default => "", :null => false
    t.integer "is_box",  :limit => 1,  :default => 0
    t.integer "enabled", :limit => 1,  :default => 1
  end

  create_table "log_info", :primary_key => "log_id", :force => true do |t|
    t.string   "log_type",    :limit => 30, :default => "",    :null => false
    t.string   "log_item",    :limit => 30, :default => "",    :null => false
    t.string   "description",               :default => ""
    t.boolean  "extended",                  :default => false, :null => false
    t.integer  "uid",         :limit => 11, :default => 0,     :null => false
    t.string   "ip_address",  :limit => 30, :default => ""
    t.datetime "log_date",                                     :null => false
  end

  create_table "log_info_extended", :primary_key => "log_id", :force => true do |t|
    t.text "extended_description"
  end

  create_table "macros", :primary_key => "name", :force => true do |t|
    t.text   "value"
    t.text   "description"
    t.string "category",    :limit => 128, :default => "", :null => false
  end

  create_table "ops", :primary_key => "op", :force => true do |t|
    t.string  "template",     :limit => 30, :default => "", :null => false
    t.string  "func",         :limit => 50
    t.integer "is_box",       :limit => 1,  :default => 0
    t.integer "enabled",      :limit => 1,  :default => 1
    t.string  "perm",         :limit => 50, :default => ""
    t.string  "aliases",                    :default => "", :null => false
    t.text    "urltemplates",                               :null => false
    t.text    "description"
  end

  create_table "patches", :id => false, :force => true do |t|
    t.string  "scoop_ver",  :limit => 20, :default => "", :null => false
    t.integer "patch_num",  :limit => 2,  :default => 0,  :null => false
    t.string  "patch_name", :limit => 30
    t.string  "patch_type", :limit => 10, :default => "", :null => false
  end

  create_table "perm_groups", :primary_key => "perm_group_id", :force => true do |t|
    t.text    "group_perms"
    t.integer "default_user_group", :limit => 1, :default => 0
    t.text    "group_description"
  end

  create_table "pollanswers", :id => false, :force => true do |t|
    t.string  "qid",    :limit => 20, :default => "", :null => false
    t.integer "aid",    :limit => 11, :default => 0,  :null => false
    t.string  "answer"
    t.integer "votes",  :limit => 11
  end

  create_table "pollquestions", :primary_key => "qid", :force => true do |t|
    t.string   "question",                :default => "", :null => false
    t.integer  "voters",    :limit => 11
    t.datetime "post_date"
    t.integer  "archived",  :limit => 1,  :default => 0
  end

  create_table "pollvoters", :force => true do |t|
    t.string   "qid",     :limit => 20, :default => "", :null => false
    t.datetime "time"
    t.integer  "uid",     :limit => 11, :default => -1, :null => false
    t.string   "user_ip", :limit => 15, :default => "", :null => false
  end

  add_index "pollvoters", ["qid", "id", "uid"], :name => "qid"

  create_table "post_throttle", :primary_key => "uid", :force => true do |t|
    t.datetime "created_time",                              :null => false
    t.integer  "post_lock",    :limit => 1,  :default => 0, :null => false
    t.integer  "lock_timeout", :limit => 11, :default => 0, :null => false
  end

  create_table "rdf_channels", :primary_key => "rid", :force => true do |t|
    t.string  "rdf_link",         :limit => 200, :default => "", :null => false
    t.string  "link",             :limit => 200
    t.string  "title",            :limit => 60
    t.text    "description"
    t.string  "image_title",      :limit => 40
    t.string  "image_url",        :limit => 200
    t.string  "image_link",       :limit => 200
    t.string  "form_title",       :limit => 40
    t.text    "form_description", :limit => 255
    t.string  "form_name",        :limit => 20
    t.string  "form_link",        :limit => 200
    t.integer "enabled",          :limit => 1,   :default => 1
    t.integer "submitted",        :limit => 1
    t.string  "submittor",        :limit => 50
  end

  create_table "rdf_items", :id => false, :force => true do |t|
    t.integer "rid",         :limit => 6,   :default => 0, :null => false
    t.integer "idx",         :limit => 4,   :default => 0, :null => false
    t.string  "title",       :limit => 100
    t.string  "link",        :limit => 200
    t.text    "description", :limit => 255
  end

  create_table "section_perms", :id => false, :force => true do |t|
    t.string  "group_id",          :limit => 50, :default => "", :null => false
    t.string  "section",           :limit => 30, :default => "", :null => false
    t.text    "sect_perms"
    t.integer "default_sect_perm", :limit => 1,  :default => 0
  end

  create_table "sections", :primary_key => "section", :force => true do |t|
    t.string "title",       :limit => 64, :default => "", :null => false
    t.text   "description"
    t.string "icon"
  end

  create_table "sessions", :force => true do |t|
    t.timestamp "last_accessed",               :null => false
    t.integer   "length",        :limit => 11
    t.text      "a_session"
  end

  create_table "special", :primary_key => "pageid", :force => true do |t|
    t.string "title",       :default => "", :null => false
    t.text   "description"
    t.text   "content"
  end

  create_table "statuscodes", :primary_key => "code", :force => true do |t|
    t.string "name", :limit => 32
  end

  create_table "stories", :force => true do |t|
    t.string   "sid",           :limit => 20,  :default => "",    :null => false
    t.string   "tid",           :limit => 20,  :default => "",    :null => false
    t.integer  "aid",           :limit => 11,  :default => 0,     :null => false
    t.string   "title",         :limit => 100
    t.string   "dept",          :limit => 100
    t.datetime "time",                                            :null => false
    t.text     "introtext"
    t.text     "bodytext"
    t.integer  "writestatus",   :limit => 1,   :default => 0,     :null => false
    t.integer  "hits",          :limit => 1,   :default => 0,     :null => false
    t.string   "section",       :limit => 30,  :default => "",    :null => false
    t.integer  "displaystatus", :limit => 1,   :default => 0,     :null => false
    t.integer  "commentstatus", :limit => 1
    t.integer  "totalvotes",    :limit => 11,  :default => 0,     :null => false
    t.integer  "score",         :limit => 11,  :default => 0,     :null => false
    t.integer  "rating",        :limit => 11,  :default => 0,     :null => false
    t.string   "attached_poll", :limit => 20
    t.integer  "sent_email",    :limit => 1,   :default => 0,     :null => false
    t.boolean  "edit_category",                :default => false, :null => false
  end

  add_index "stories", ["id"], :name => "id", :unique => true
  add_index "stories", ["section", "displaystatus"], :name => "section_idx"
  add_index "stories", ["displaystatus"], :name => "displaystatus_idx"

  create_table "subscription_info", :primary_key => "uid", :force => true do |t|
    t.integer  "expires",      :limit => 11, :default => 0,  :null => false
    t.datetime "created",                                    :null => false
    t.datetime "last_updated",                               :null => false
    t.string   "updated_by",   :limit => 50, :default => ""
    t.integer  "active",       :limit => 1,  :default => 0,  :null => false
    t.string   "type",         :limit => 50, :default => "", :null => false
  end

  create_table "subscription_payments", :id => false, :force => true do |t|
    t.integer "uid",        :limit => 11,                               :default => 0,   :null => false
    t.string  "order_id",   :limit => 50,                               :default => "",  :null => false
    t.decimal "cost",                     :precision => 7, :scale => 2, :default => 0.0, :null => false
    t.string  "pay_type",   :limit => 10,                               :default => "",  :null => false
    t.date    "auth_date",                                                               :null => false
    t.date    "final_date"
    t.integer "paid",       :limit => 1
    t.string  "type",       :limit => 50,                               :default => "",  :null => false
  end

  create_table "subscription_types", :id => false, :force => true do |t|
    t.string  "type",          :limit => 50,                               :default => "",  :null => false
    t.string  "perm_group_id", :limit => 50,                               :default => "",  :null => false
    t.decimal "cost",                        :precision => 7, :scale => 2, :default => 0.0, :null => false
    t.integer "max_time",      :limit => 11,                               :default => 0,   :null => false
    t.integer "renewable",     :limit => 1,                                :default => 1,   :null => false
    t.text    "description"
  end

  create_table "subsections", :id => false, :force => true do |t|
    t.string    "section",     :limit => 32, :default => "",    :null => false
    t.string    "child",       :limit => 32, :default => "",    :null => false
    t.boolean   "inheritable",               :default => false, :null => false
    t.boolean   "invisible",                 :default => false, :null => false
    t.timestamp "time",                                         :null => false
  end

  create_table "topics", :primary_key => "tid", :force => true do |t|
    t.string  "image",   :limit => 30
    t.string  "alttext", :limit => 40
    t.integer "width",   :limit => 11
    t.integer "height",  :limit => 11
  end

  create_table "userprefs", :id => false, :force => true do |t|
    t.integer "uid",       :limit => 11,  :default => 0,  :null => false
    t.string  "prefname",  :limit => 200, :default => "", :null => false
    t.text    "prefvalue"
  end

  create_table "users", :primary_key => "uid", :force => true do |t|
    t.string   "nickname",       :limit => 50
    t.string   "realname",       :limit => 50
    t.string   "realemail",      :limit => 50
    t.string   "origemail",      :limit => 50
    t.string   "fakeemail",      :limit => 50
    t.string   "homepage",       :limit => 100
    t.string   "passwd",         :limit => 12
    t.string   "mode",           :limit => 10
    t.string   "posttype",       :limit => 10
    t.string   "bio"
    t.string   "sig",            :limit => 160
    t.integer  "mailreplies",    :limit => 1
    t.integer  "trustlev",       :limit => 1
    t.integer  "threshold",      :limit => 1
    t.integer  "score",          :limit => 1
    t.integer  "points",         :limit => 1
    t.integer  "commentsort",    :limit => 1,   :default => 0
    t.integer  "defaultpoints",  :limit => 1,   :default => 0
    t.text     "publickey"
    t.string   "perms"
    t.string   "perm_group",     :limit => 50
    t.string   "mojo",           :limit => 5
    t.text     "admin_notes"
    t.string   "creation_ip",    :limit => 16,  :default => "",   :null => false
    t.datetime "creation_time",                                   :null => false
    t.string   "newpasswd",      :limit => 12
    t.datetime "pass_sent_at"
    t.boolean  "is_new_account"
    t.string   "country",        :limit => 2,   :default => "US", :null => false
  end

  add_index "users", ["country"], :name => "country_idx"

  create_table "vars", :primary_key => "name", :force => true do |t|
    t.text   "value"
    t.text   "description"
    t.string "type",        :limit => 5,   :default => "text", :null => false
    t.string "category",    :limit => 128, :default => "",     :null => false
  end

  create_table "viewed_stories", :id => false, :force => true do |t|
    t.integer "uid",         :limit => 11, :default => 0,  :null => false
    t.string  "sid",         :limit => 20, :default => "", :null => false
    t.integer "lastseen",    :limit => 11, :default => 0,  :null => false
    t.integer "highest_idx", :limit => 11, :default => 0,  :null => false
    t.integer "hotlisted",   :limit => 4,  :default => 0,  :null => false
  end

  add_index "viewed_stories", ["uid", "hotlisted"], :name => "hotlist_idx"

  create_table "whos_online", :id => false, :force => true do |t|
    t.string    "ip",         :limit => 16, :default => "", :null => false
    t.integer   "uid",        :limit => 11, :default => 0,  :null => false
    t.timestamp "last_visit",                               :null => false
  end

end
