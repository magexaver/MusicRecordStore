# frozen_string_literal: true

class User < ApplicationRecord
  enum role: { user: 0, admin: 1, manager: 2 }

  has_many :orders
  has_many :music_records, through: :orders

  has_many :rents

  validates :first_name, :last_name, :phone_number, :email, presence: true

  def rented_music_records
    rents.where('rent_date + \'3 months\' >= ?', Date.current)
  end
end
