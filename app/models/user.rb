class User < ApplicationRecord
  has_one :email, as: :emailable

  def email_address
    email&.address
  end
end
