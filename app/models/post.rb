class Post < ActiveRecord::Base
	#attr_accessible :title, :content, :published, :comment
	has_many :comments
end
