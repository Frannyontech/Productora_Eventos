class Group < ApplicationRecord
    enum gender: [:males, :females, :both]
    has_many :concerts

    def total_concerts
        self.concerts.count
    end

    def debut
        concerts = self.concerts
        if concerts.present?
            concerts.order(date_event: :desc).first.date_event
        else
            "No Debut"
        end
    end

    def audience
        concerts = self.concerts
        concerts.sum{|x| x.audience}
    end
end
