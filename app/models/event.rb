class Event < ApplicationRecord
  belongs_to :user, :optional => true
  belongs_to :dropzone, :optional => true
  has_and_belongs_to_many :disciplines
end
