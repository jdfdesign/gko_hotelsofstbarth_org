class Member < Content
  has_one :meta,
    :class_name => "MemberOption", 
    :dependent => :destroy
  accepts_nested_attributes_for :meta
  attr_accessible :meta_attributes
  delegate :area, :category, :rates_policy, :cancellation_policy, :amenities, :rates, :main_contact, :services, :annual_opening, :map, :to => :meta
  
  has_many :picto_assignments, :as => :attachable, :dependent => :destroy
  has_many :pictos, :through => :picto_assignments, :source => :pictable, :source_type => 'Picto'
  accepts_nested_attributes_for :picto_assignments, :allow_destroy => true
  attr_accessible :picto_assignments_attributes, :pictos_ids_attributes, :picto_ids
  
  def self.in_area(area_id)  
    joins(:meta).where(:member_options => {:area_id => area_id})
  end
end
