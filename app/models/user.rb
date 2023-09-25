class User < ApplicationRecord
    has_secure_password

    validate :email, presence: true #, format: { regex }
end
