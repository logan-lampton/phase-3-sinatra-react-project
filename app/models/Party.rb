class Party < ActiveRecord::Base
    has_many :members
    belongs_to :user
end