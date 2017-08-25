class RequestedTag < ApplicationRecord
  belongs_to :procedure
  belongs_to :tag
end
