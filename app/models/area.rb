class Area < ActiveRecord::Base
  image_accessor :picto
  belongs_to :site, :touch => true  
  default_scope :order => 'name'
  validates :name, :presence => true, :uniqueness => true, :length => 3..60
  has_many :member_options, :dependent => :nullify
  has_many :members, :through => :member_options
  attr_accessible :name, :picto, :site_id
end
