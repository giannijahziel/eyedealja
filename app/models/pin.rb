class Pin < ActiveRecord::Base
	acts_as_votable
	belongs_to :category
	belongs_to :user
	belongs_to :gallery

	has_attached_file :image,
		:path => ":rails_root/public/images/:id/:filename",
		:url  => "/images/:id/:filename"

	has_attached_file :image, :styles => { :medium => "300x300>" }
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
