require 'rails_helper'

describe User, type: :model do
  context 'validations' do
    it { should validate_presence_of :username }
    it { should validate_presence_of :password }
  end

  context 'uniqueness' do
    it { should validate_uniqueness_of :username }
  end

  context 'roles' do
    it { should respond_to :role }
    it { should respond_to :admin? }
    it { should respond_to :default? }
  end

  context 'security' do
    it { should have_secure_password }
  end

  context 'relationships' do
    it { should have_many :favorites }
    it { should have_many :gifs }
    it { should have_many :categories }
  end
end
