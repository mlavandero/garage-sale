class Item < ActiveRecord::Base
  belongs_to :sale

  has_attached_file(:picture)
end
