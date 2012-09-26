class MemberOption < ActiveRecord::Base
  image_accessor :map
  belongs_to :member, :touch => true
  belongs_to :area
  translates :rates_policy, :cancellation_policy, :amenities, :rates, :main_contact, :services, :annual_opening
  attr_accessible :content_id, :map, :remove_map, :area_id, :category, :rates_policy, :cancellation_policy, :amenities, :rates, :main_contact, :services, :annual_opening
end

