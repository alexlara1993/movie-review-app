class Movie < ActiveRecord::Base
	belongs_to :user

	
	has_attached_file :image, styles: { medium: "400x600#", :thumb => "100x100>" }
  	
  
  	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
