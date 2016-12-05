# -------------------------------------
#    t.string :name
#    t.integer :state, default: 0
#    t.integer :type
#    t.text :description
#    t.string :avatar
#    t.float :price, default: 0.0
# -------------------------------------
class Place < ActiveRecord::Base
  enum state: {0: "pending", 1: "accepted", 2: "rejected"}
  enum type: {0: "Hotel", 1: "Restauratant"}

  validates : :name, :type, :description, :price, presence: true


end
