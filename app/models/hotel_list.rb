class HotelList < Section  
  has_many  :hotels, 
            :foreign_key => 'section_id', 
            :include => :translations,
            :dependent => :destroy

  def content_type
   'Hotel'
  end
  
end
