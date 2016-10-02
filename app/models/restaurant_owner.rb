class RestaurantOwner < ApplicationRecord
  # Direct associations

  has_many   :restaurant_ownerships,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
