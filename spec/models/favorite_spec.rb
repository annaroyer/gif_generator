require 'rails_helper'

describe Favorite, type: :model do
  context 'relationships' do
    it { should belong_to :user }
    it { should belong_to :gif }
  end
end
