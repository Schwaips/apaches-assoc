class ActorEvent < ApplicationRecord
  belongs_to :actor
  belongs_to :event
end
