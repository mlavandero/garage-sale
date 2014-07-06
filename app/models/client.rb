class Client < ActiveRecord::Base
  has_many :sales

  validates_presence_of :first_name, :last_name
  validates :email, presence: true, format: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates_uniqueness_of :email, on: :create
  validates :mobile_phone, presence: true, numericality: { only_integer: true }, length: { is: 8 }
  validates :landline_phone, length: { in: 7..8 }, allow_nil: true, allow_blank: true
end
