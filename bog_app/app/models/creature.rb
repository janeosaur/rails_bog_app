class Creature < ApplicationRecord
  validates :name, presence: { message: "must be given please" }
  validates :description, presence: { message: "must be given please" }
end
