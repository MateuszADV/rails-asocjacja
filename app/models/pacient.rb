class Pacient < ApplicationRecord
	has_many :visits
	has_many :doktors, through: :visits

	has_one :user

	def to_s
		"#{name} #{last_name}"
	end
end
