# frozen_string_literal: true

# class comment
class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: CATEGORIES }, case_sensitive: false
end
