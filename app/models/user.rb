class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :first_name, presence: true, format: { with: VALID_NAME_REGEX, message: 'Full-width characters.' }
  validates :first_name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: 'Full-width characters.' }
  validates :last_name, presence: true, format: { with: VALID_NAME_REGEX, message: 'Full-width characters.' }
  validates :last_name_kana, presence: true, format: { with: /\A[ァ-ヶー－]+\z/, message: 'Full-width characters.' }
  validates :date_of_birth, presence: true
  VALID_NAME_REGEX = /\A[ぁ-んァ-ン一-龥]/
  VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
validates :password, format: { with: VALID_PASSWORD_REGEX }
end
