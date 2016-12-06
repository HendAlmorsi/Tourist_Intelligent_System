class Place < ActiveRecord::Base
	has_one :request
	enum state: { pending: 0, accepted: 1, rejected: 2}
	enum type: { Hotel: 0,Restaurant: 1}

	validates :name, :place_type, :description, :price, presence: true
end
