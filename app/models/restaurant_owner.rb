class RestaurantOwner < ApplicationRecord
  # Direct associations

  has_many   :review_replies,
             :foreign_key => "owner_id",
             :dependent => :destroy

  has_many   :restaurant_ownerships,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
