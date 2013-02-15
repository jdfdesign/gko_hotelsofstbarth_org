class JobOffer < ActiveRecord::Base
  include Extensions::Models::BelongsToSection
  
  belongs_to :member
  
  attr_accessible :body, :email, :name, :phone, :member_id

  validates :body, :name, :presence => true
  validates :email, :presence => true, :email => true
  
  ## class methods ##
  def self.trackable?
    false
  end

  
  ## instance methods ##
  def trackable?
    self.class.trackable?
  end
end
