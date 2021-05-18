class Blog < ApplicationRecord
    has_and_belongs_to_many :admin_users
    belongs_to :category
end
