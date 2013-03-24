desc "Make user admin: rake make_admin email=asdf@asdf.com"
task :make_admin => :environment do
  unless user = User.find_by_email(ENV['email'])
    puts "Couldn't find user!"
    exit 1
  end

  user.update_attribute :admin, true

  puts "done."
end