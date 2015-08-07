class Board < ActiveRecord::Base
  validates :title, :user, presence: true
  before_action :require_signed_in!
  belongs_to :user
end
