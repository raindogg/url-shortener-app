class Link < ApplicationRecord
  belongs_to :user

  def generate_slug
    alph = ('a'..'z').to_a
    num = ('0'..'9').to_a
    range = alph.concat(num)
    new_slug = ""
    5.times do 
      new_slug += range.sample
    end
    self.slug = new_slug
  end
end
