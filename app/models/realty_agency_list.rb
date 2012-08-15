class RealtyAgencyList < Section  
  has_many  :realty_agencies, 
            :foreign_key => 'section_id', 
            :dependent => :destroy

  def content_type
   'RealtyAgency'
  end
  
end
