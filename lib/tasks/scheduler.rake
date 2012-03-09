desc "Called by Heroku scheduler add-on"
task :demo_cleanup => :environment do
  Boxfile.all.each do |b|
    b.destroy
  end
end
