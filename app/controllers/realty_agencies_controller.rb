class RealtyAgenciesController < ContentsController
  respond_to :html, :js
  belongs_to :realty_agency_list
  has_scope :in_area, :only => :index
    
  protected
  def load_resources
    end_of_association_chain.includes(:images, :meta).published.with_translations(I18n.locale)
  end
end
