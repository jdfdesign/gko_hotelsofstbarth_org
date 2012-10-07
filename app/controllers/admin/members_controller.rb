class Admin::MembersController < Admin::ContentsController
  nested_belongs_to :site, :member_list
  before_filter :init_associations, :only => [:new, :edit]
  
  def init_associations
    resource.build_meta if resource.meta.nil?
  end
end
