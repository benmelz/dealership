# frozen_string_literal: true

class Make < ApplicationRecord
  validates :name, presence: true, uniqueness: true
end
