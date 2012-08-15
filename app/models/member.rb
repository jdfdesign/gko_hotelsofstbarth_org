class Member < Content
  has_one :meta,
    :class_name => "MemberOption", 
    :dependent => :destroy
  accepts_nested_attributes_for :meta
  attr_accessible :meta_attributes
  delegate :area, :category, :rates_policy, :cancellation_policy, :amenities, :rates, :main_contact, :services, :annual_opening, :to => :meta
end
