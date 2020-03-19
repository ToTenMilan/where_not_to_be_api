# frozen_string_literal: true

class HelpRequest < ApplicationRecord
  belongs_to :user

  enum request_type: { single: 0, crowd: 1 }
  enum status: { requested: 0, cancelled: 1, done: 2 }
end
