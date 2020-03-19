# frozen_string_literal: true

class UserBlueprint < Blueprinter::Base
  identifier :id

  fields :name, :lat, :lng, :home_lat, :home_lng
end
