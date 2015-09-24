class Pin < ActiveRecord::Base
	 Paperclip.options[:command_path] = 'C:/Program Files/ImageMagick-6.9.2-Q16'
     belongs_to :user
     has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }
     #do_not_validate_attachment_file_type :image
     # validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/ #added as recommended in forum

end