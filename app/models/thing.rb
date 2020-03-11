# frozen_string_literal: true

class Thing
  include Mongoid::Document
  field :name, type: String
end
