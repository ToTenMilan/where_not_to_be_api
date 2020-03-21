class PopulateDensity < ActiveRecord::Migration[5.0]
  def up
    PointOfInterest.all.each do |poi|
      poi.update(density: rand(5..42))
    end
  end
end
