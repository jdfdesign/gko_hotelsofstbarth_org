class Area < ActiveRecord::Base
  belongs_to :site, :touch => true  
  default_scope :order => 'areas.name'
  validates :name, :presence => true, :uniqueness => true, :length => 3..60
  has_many :member_options, :dependent => :nullify
  has_many :members, :through => :member_options
  attr_accessible :name, :site_id
end
