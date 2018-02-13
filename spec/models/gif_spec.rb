require 'rails_helper'

describe Gif, type: :model do
  context 'validations' do
    it { should validate_presence_of :image_path }
    it { should validate_presence_of :category }
  end

  context 'uniqueness' do
    it { should validate_uniqueness_of :image_path }
  end

  context 'relationships' do
    it { should have_many :favorites }
    it { should belong_to :category }
  end
end
