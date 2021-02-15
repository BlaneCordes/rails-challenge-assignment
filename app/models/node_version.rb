class NodeVersion < ApplicationRecord
  belongs_to :node

  ATTRIBUTES_NOT_TO_VERSION = %w[created_at updated_at]

end

