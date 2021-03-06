class Book < ActiveRecord::Base

belongs_to :user
has_many :comments

	has_attached_file :image, styles: { medium: "475x325>", thumb: "350x250>" }
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
