class Schedule < ApplicationRecord
    validates :start_time, presence: true
end
