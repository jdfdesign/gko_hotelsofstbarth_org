class MembersController < ContentsController
  respond_to :html, :js
  belongs_to :member_list
  has_scope :in_area, :only => :index
  has_scope :with_title, :only => :index
    
  protected
  def load_resources
    end_of_association_chain.includes(:images, :meta).published.order('contents.position').with_translations(I18n.locale)
  end
end
