class Pet < ApplicationRecord
    validates_presence_of :name
    belongs_to :owner
    belongs_to :animal

    

    scope :older_than_five, -> { joins(:animal).where("age >= ?", 5 ) }

    def day_since_adopted
        (adoption_day-Time.now).to_i
    end

    before_save :adoption_day

    def adoption_day
        self.adoption_time = Time.now
    end
end
