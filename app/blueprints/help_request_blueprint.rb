# frozen_string_literal: true

class HelpRequestBlueprint < Blueprinter::Base
  identifier :id

  fields :request_type, :title, :description, :lat, :lng, :time_from, :time_to, :target,
         :unit, :created_at, :status

  view :with_user do
    association :user, blueprint: UserBlueprint
  end
end
