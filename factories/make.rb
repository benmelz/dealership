# frozen_string_literal: true

FactoryBot.define do
  factory :make do
    sequence(:name) { |n| "Make#{n}" }
  end
end
