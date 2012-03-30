desc "Mass upload all files in the public/to-upload folder to Progstr Filer"
task :mass_upload => :environment do
  files = Dir.glob(File.join(Rails.public_path, "to-upload") + "/**")
  files.each do |file|
    filer_upload(file)
  end
end

def filer_upload(file)
  puts "Uploading #{file}..."

  File.open(file) do |f|
    model = Boxfile.new
    model.file = f
    model.save
  end
end
