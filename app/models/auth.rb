class Auth < ApplicationRecord
  has_secure_password

  validates :password_confirmation, presence: true, if: :password_digest_changed?
  validate :password_confirmation_match, if: :password_digest_changed?

  def password_confirmation_match
    errors.add(:password_confirmation, "doesn't match Password") if password != password_confirmation
  end
end





  
