class Url < ApplicationRecord
    UNIQUE_ID_LENGTH = 6
    
  
    before_create :genrate_short_url
    belongs_to :user
    
    def genrate_short_url
        url = ([*('a'..'z'),*('0'..'9')]).sample(UNIQUE_ID_LENGTH).join
        self.short_url = url
    end
end
