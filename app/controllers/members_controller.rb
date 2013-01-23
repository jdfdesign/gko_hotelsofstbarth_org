class MembersController < ContentsController
  respond_to :html, :js
  belongs_to :member_list
  has_scope :in_area, :only => :index
  has_scope :with_title, :only => :index
    
  protected
  def load_resources
    end_of_association_chain.includes(:images, :meta, :translations).with_locales(I18n.locale).published.order('contents.position')
  end
end
