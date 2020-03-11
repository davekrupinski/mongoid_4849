# frozen_string_literal: true

class BadStuff
  include Mongoid::Document
  belongs_to :thing
  delegate :name, to: :thing, allow_nil: true
end
