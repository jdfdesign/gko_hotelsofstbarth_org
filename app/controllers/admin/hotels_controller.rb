class Admin::HotelsController < Admin::MembersController
  nested_belongs_to :site, :hotel_list
end