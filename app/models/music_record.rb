# frozen_string_literal: true

class MusicRecord < ApplicationRecord
  enum damage_assessment: { excellent: 0, good: 1, poor: 2 }

  validates :title, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0 }
end
