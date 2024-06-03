# frozen_string_literal: true

class Rent < ApplicationRecord
  belongs_to :user
  belongs_to :music_record

  enum damage_assessment: { excellent: 0, good: 1, poor: 2 }

  validates :rent_date, :damage_assessment, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
