class Client < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  has_many :sales

  validates :email, presence: true, format: /\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/
  validates_uniqueness_of :email, on: :create
  validates :mobile_phone, numericality: { only_integer: true }, length: { is: 8 }, allow_nil: true, allow_blank: true
  validates :landline_phone, length: { in: 7..8 }, allow_nil: true, allow_blank: true
end
