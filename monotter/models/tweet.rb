require "active_record"

class Tweet < ActiveRecord::Base
  validates :text, presence: true
end
