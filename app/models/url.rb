class Url < ApplicationRecord
    UNIQUE_ID_LENGTH = 6
    validates :long_url, presence: true, on: :create
    validates_format_of :long_url,
    with: /\A(?:(?:http|https):\/\/)?([-a-zA-Z0-9.]{2,256}\.[a-z]{2,4})\b(?:\/[-a-zA-Z0-9@,!:%_\+.~#?&\/\/=]*)?\z/
    before_create :genrate_short_url
    belongs_to :user

    def genrate_short_url
        url = ([*('a'..'z'),*('0'..'9')]).sample(UNIQUE_ID_LENGTH).join
        self.short_url = url
    end
end
