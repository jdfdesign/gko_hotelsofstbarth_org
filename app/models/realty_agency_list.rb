class RealtyAgencyList < Section 
  include Extensions::Models::IsList 
  has_many  :realty_agencies, 
            :foreign_key => 'section_id', 
            :dependent => :destroy

  def content_type
   'RealtyAgency'
  end
  
end
