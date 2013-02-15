class JobRequest < ActiveRecord::Base

  mount_uploader :curriculum, CurriculumUploader
  
  validates :body, :lastname, :firstname, :available_on, :address, :curriculum, :presence => true
  validates :email, :presence => true, :email => true
  
  attr_accessible :body, :email, :lastname, :firstname, :available_on, :address, :curriculum

  ## class methods ##
  def self.trackable?
    false
  end
  
  ## instance methods ##
  def trackable?
    self.class.trackable?
  end
end
