class Doktor < ApplicationRecord
	has_many :visits
	has_many :pacients, through: :visits

	has_one :user

	def to_s
		"#{name} #{last_name}"
	end

end
