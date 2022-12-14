# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Make do
  describe 'validations' do
    subject { build :make }

    it { is_expected.to validate_presence_of(:name) }
    it { is_expected.to validate_uniqueness_of(:name) }
  end
end
