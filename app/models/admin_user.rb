class AdminUser < ApplicationRecord
    has_and_belongs_to_many :blogs
    has_many :section_edits
    has_many :sections, :through => :section_edits
    # self.table_name = "admin_users"
end
