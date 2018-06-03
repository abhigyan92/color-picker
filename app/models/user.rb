class User < ApplicationRecord

  before_create :generate_random_user

	def generate_random_user
    letters_arr = [('a'..'z'), ('A'..'Z')].map(&:to_a).flatten
    self.name = (0...6).map { letters_arr[rand(letters_arr.length)] }.join
  end
end
