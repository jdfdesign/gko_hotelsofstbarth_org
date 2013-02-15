class CurriculumUploader < CarrierWave::Uploader::Base
  include Gko::CarrierWave::Uploader::Asset

  storage :file

  def store_dir
    self.build_store_dir('uploads', 'sites', model.site_id, 'curriculums', model.id)
  end
  
  def extension_white_list
    %w(pdf)
  end
end