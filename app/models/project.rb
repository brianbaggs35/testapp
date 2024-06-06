class Project < ApplicationRecord
    scope :almost_completed, -> { where('percent_complete > 75.0') }
end
