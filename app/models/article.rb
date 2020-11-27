class Article < ApplicationRecord
	validate :check_parameter, on: :update
	validate :check_parameter, on: :create
	validate :check_parameter, on: :save
  has_many :comments

	def check_parameter
		if !title.present? || title.length <5
			self.errors.add(:title, "Should be atlest of 5 character")
		end
	end
end
