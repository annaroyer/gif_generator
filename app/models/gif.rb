class Gif < ApplicationRecord
  validates_presence_of :image_path, :category
  validates :category, :length => {
  :maximum => 1,
  :tokenizer => lambda { |str| str.scan(/\w+/) },
  :too_long  => "Please limit your summary to %{count} words"
}
end
