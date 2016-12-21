class Video < ActiveRecord::Base

	has_attached_file :image, :styles => { :tube => "348x234>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
