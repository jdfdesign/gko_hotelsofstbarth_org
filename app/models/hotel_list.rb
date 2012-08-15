class HotelList < Section  
  has_many  :hotels, 
            :foreign_key => 'section_id', 
            :dependent => :destroy

  def content_type
   'Hotel'
  end
  
end
