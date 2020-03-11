# frozen_string_literal: true

class GoodStuff
  delegate :name, to: :thing, allow_nil: true
  include Mongoid::Document
  belongs_to :thing
end
