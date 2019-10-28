class User < ApplicationRecord

  validates :name, presence: true

  has_many :accounts, dependent: :destroy

end
