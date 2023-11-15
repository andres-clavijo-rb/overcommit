# frozen_string_literal: true

# Simple abstraction
class User
  attr_reader :email, :admin?

  def self.first_admin
    all.detect(&:admin?)
  end
end
