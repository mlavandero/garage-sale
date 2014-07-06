class Sale < ActiveRecord::Base
  belongs_to :client
  has_many :items

  validates_presence_of :title, :description
end
