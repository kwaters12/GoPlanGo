namespace :activity do
  desc "Generate Default Activities"
  task :generate_default => :environment do
    ["Yoga", "Skiing", "Canoeing", "Snowshoeing", "Fishing", 
      "Massage", "Cross Country", "Bus Trips", "Scooter Rental", "Bike Rental"].each do |activity_name|
        Activity.create(name: activity_name)
    end
  end

end
