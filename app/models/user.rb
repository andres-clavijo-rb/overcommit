# frozen_string_literal: true

# Simple abstraction
class User
  attr_reader :email, :admin?

  def self.first_admin
    all.detect(&:admin?)
  end

  def role_name
    if admin?
      :Admin
    else
      :Regular
    end
  end
end
