Site.class_eval do
  has_many :hotel_lists, :dependent => :destroy
  has_many :realty_agency_lists, :dependent => :destroy
  has_many :hotels
  has_many :realty_agencies
  has_many :members
  has_many :areas
end
