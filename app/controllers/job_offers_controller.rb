class JobOffersController < ContentsController
  respond_to :html, :js
  belongs_to :job_offer_list
    
  protected
  def load_resources
    end_of_association_chain.order('updated_at DESC')
  end
end
