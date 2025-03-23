class Project < ApplicationRecord
    has_many :tasks
    after_initialize :set_defaults

    validates_presence_of :title, :description, :percent_complete

    scope :almost_complete, -> { where('percent_complete > 85.0') }
    scope :still_needs_work, -> { where('percent_complete < 25.0') }

    def set_defaults
        self.percent_complete ||= 0.0
    end    
end
