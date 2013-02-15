class JobOfferList < Section 
  include Extensions::Models::IsList 
  has_many  :job_offers, 
            :foreign_key => 'section_id', 
            :dependent => :destroy

  def content_type
   'JobOffer'
  end
end