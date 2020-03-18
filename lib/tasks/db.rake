namespace :db do
  desc "clear seed"
  task clear_seed: :environment do
    User.destroy_all
    PointOfInterest.delete_all
  end

end
