class Role < ApplicationRecord
    has_many :employee_roles, dependent: :restrict_with_exception
end
