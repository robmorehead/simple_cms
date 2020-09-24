class AdminUser < ApplicationRecord
    # Optional way of handling class-name table-name mismatch 
    # self.table_name = "admin_users"

    attr_accessor :first_name

    has_and_belongs_to_many :pages
    has_many :section_edits
    has_many :sections, :through => :section_edits

    # Automatically handle getter-setters with attr_accessor
    def last_name
        @last_name
    end

    def last_name=(value)
        @last_name = value
    end

end
