class Picto < ActiveRecord::Base
  
  belongs_to_site
  
  # What is the max image size a user can upload
  MAX_SIZE_IN_KB = 2000
  # What is the max image format a user can upload
  FILE_TYPES = %w(image/jpg image/jpeg image/png image/gif image/tiff)

  image_accessor :image do
    # @see Image Class for explanations
    after_assign do |a|
      a.name = image.name.parameterize
      a.convert!("-strip")
      a.convert!("-density 72")
    end
  end

  delegate :size, :mime_type, :url, :width, :height, :to => :image

  has_many :picto_assignments, :as => :pictable, :dependent => :destroy
  
  # allows Mass-Assignment
  attr_accessible :image

  validates :image, :presence => {},
            :length => {:maximum => MAX_SIZE_IN_KB.kilobytes}

  validates_property :mime_type,
                     :of => :image,
                     :in => FILE_TYPES,
                     :message => "bad file "

  validates_property :width,
                     :of => :image, :in => (100..1000),
                     :message => "bad size "
end

