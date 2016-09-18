# Rakefile
namespace :deploy do
  def deploy(env)
    puts "Deploying to #{env}"
    system "TARGET=#{env} bundle exec middleman deploy"
  end

  task :development do
    deploy :development
  end

  task :production do
    deploy :production
  end
end
