class Admin::JobOffersController < Admin::ResourcesController
  nested_belongs_to :site, :job_offer_list
end