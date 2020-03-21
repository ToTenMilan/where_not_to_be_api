class PopulateDensity < ActiveRecord::Migration[5.0]
  def up
    densities = [3, 3, 3, 8, 8, 13, 13, 18, 18, 38]
    PointOfInterest.all.each do |poi|
      poi.update(density: rand(5..42))
    end
  end
end
