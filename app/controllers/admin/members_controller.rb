class Admin::MembersController < Admin::ContentsController
  before_filter :init_associations, :only => [:new, :edit]
  
  def init_associations
    resource.build_meta if resource.meta.nil?
  end
end
