require 'rails_helper'

describe Gif, type: :model do
  context 'validations' do
    it { should validate_presence_of :image_path }
    it { should validate_presence_of :category }
  end
end
