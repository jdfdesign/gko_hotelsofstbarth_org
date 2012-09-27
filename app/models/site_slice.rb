Site.class_eval do
  has_many :hotel_lists
  has_many :realty_agency_lists
  has_many :hotels, :through => :hotel_lists
  has_many :realty_agencies, :through => :realty_agency_lists
  #has_many :members
  has_many :areas, :dependent => :destroy
  has_many :pictos, :dependent => :destroy
  
  def members
    hotels + realty_agencies
  end
end
