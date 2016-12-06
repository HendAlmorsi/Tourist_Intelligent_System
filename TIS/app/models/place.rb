# -------------------------------------
#    t.string :name
#    t.integer :state, default: 0
#    t.integer :type
#    t.text :description
#    t.string :avatar
#    t.float :price, default: 0.0
# -------------------------------------
class Place < ActiveRecord::Base
  enum state: {pending: 0, accepted: 1, rejected: 2}
  enum type: [:Hotel, :Restaurant]

  validates :name, :state, :description, :price, presence: true

end
