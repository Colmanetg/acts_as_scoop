class AdInfo < ActiveRecord::Base
  validates_length_of :ad_tmpl, :allow_nil => true, :maximum => 30
  validates_length_of :ad_file, :allow_nil => true, :maximum => 255
  validates_length_of :ad_url, :allow_nil => true, :maximum => 255
  validates_numericality_of :views_left, :allow_nil => true, :only_integer => true
  validates_numericality_of :perpetual, :allow_nil => true, :only_integer => true
  validates_numericality_of :sponsor, :allow_nil => true, :only_integer => true
  validates_numericality_of :active, :allow_nil => true, :only_integer => true
  validates_numericality_of :example, :allow_nil => true, :only_integer => true
  validates_length_of :ad_title, :allow_nil => true, :maximum => 255
  validates_numericality_of :view_count, :allow_nil => true, :only_integer => true
  validates_numericality_of :click_throughs, :allow_nil => true, :only_integer => true
  validates_numericality_of :judged, :allow_nil => true, :only_integer => true
  validates_numericality_of :paid, :allow_nil => true, :only_integer => true
  validates_numericality_of :purchase_size, :allow_nil => true, :only_integer => true
  validates_numericality_of :purchase_price, :allow_nil => true
  validates_numericality_of :judger, :allow_nil => true, :only_integer => true
  validates_numericality_of :approved, :allow_nil => true, :only_integer => true
  validates_numericality_of :impression_cache, :allow_nil => true, :only_integer => true
  validates_presence_of :pos
  validates_numericality_of :pos, :allow_nil => false, :only_integer => true
  validates_length_of :ad_sid, :allow_nil => true, :maximum => 20
end
