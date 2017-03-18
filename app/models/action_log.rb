class ActionLog
  include Mongoid::Document

  field :datetime, type: DateTime
  field :user_id, type: String
  field :article_id, type: String
  field :delete, type: Boolean
end
