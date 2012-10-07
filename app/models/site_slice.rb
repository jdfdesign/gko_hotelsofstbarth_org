Site.class_eval do
  has_many :member_lists
  has_many :members, :through => :member_lists
  has_many :areas, :dependent => :destroy
  has_many :pictos, :dependent => :destroy
end
