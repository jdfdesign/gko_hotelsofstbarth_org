class MemberOption < ActiveRecord::Base
  belongs_to :member, :touch => true
  belongs_to :area
  attr_accessible :content_id, :area_id, :category, :rates_policy, :cancellation_policy, :amenities, :rates, :main_contact, :services, :annual_opening
end

