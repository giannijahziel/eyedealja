class Wallpaper < ActiveRecord::Base
	has_attached_file :image,
		:path => ":rails_root/public/images/:id/:filename",
		:url  => "/images/:id/:filename"
	
	has_attached_file :image, styles: { full: "1920x1080>", thumb: "100x56>", :medium => "300x300>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
