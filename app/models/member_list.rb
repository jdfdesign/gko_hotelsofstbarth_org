class MemberList < Section 
  include Extensions::Models::IsList 
  has_many  :members, 
            :foreign_key => 'section_id', 
            :include => :translations,
            :dependent => :destroy

  def content_type
   'Member'
  end
  
end