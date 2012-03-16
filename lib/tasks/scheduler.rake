desc "Called by Heroku scheduler add-on"
task :demo_cleanup => :environment do
  Boxfile.all.each do |b|
    b.destroy
  end
  
  file = File.open(Rails.public_path+'/images.jpeg')
  newBoxfile = Boxfile.new()
  newBoxfile.file = file
  newBoxfile.save

  file = File.open(Rails.public_path+'/RubyRailsEcosystemFall2009.pdf')
  newBoxfile = Boxfile.new()
  newBoxfile.file = file
  newBoxfile.save
end
