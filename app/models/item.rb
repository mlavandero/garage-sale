class Item < ActiveRecord::Base
  belongs_to :sale

  has_attached_file(:picture)

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :title, :description, :initial_price
end
