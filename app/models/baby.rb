class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy
    
    def feed_count
        breastfeedings.count
    end

    def feed_volume
        breastfeedings.sum(:volume)
    end
    
    def feed_time
        breastfeedings.sum(:feeding_time)
    end
    
    def feeding_times_today
        feed_today.count
    end
    
    def volume_today
        feed_today.sum(:volume)
    end
    
    def last_time
        breastfeedings.last.created_at
    end
    
    private
    def feed_today
        breastfeedings.where('created_at > ?', Date.today)
    end
    
end

