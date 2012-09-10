class PictoAssignment < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true, :touch => true
  belongs_to :pictable, :polymorphic => true
  default_scope :order => 'picto_assignments.position'
  acts_as_list :scope => [:attachable_id, :attachable_type]
  validates_presence_of :attachable_id, :attachable_type, :pictable_id, :pictable_type

  #----- Instance methods -----------------------------------------------------
  # Using polymorphic associations in combination with single
  # table inheritance (STI) is a little tricky.
  # In order for the associations to work as expected, ensure
  # that you store the base model for the STI models
  # in the type column of the polymorphic association.
  def attachable_type=(sType)
    super(sType.to_s.classify.constantize.base_class.to_s)
  end

  def pictable_type=(sType)
    super(sType.to_s.classify.constantize.base_class.to_s)
  end
end
