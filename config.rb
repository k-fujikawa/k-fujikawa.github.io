###
# Page options, layouts, aliases and proxies
###

require 'dotenv'

Dotenv.load

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

configure :development do
  activate :livereload
end

# activate :deploy do |deploy|
#   deploy.build_before    = true
#   deploy.deploy_method   = :ftp
#   deploy.host            = 'sv9.star.netowl.jp'
#   deploy.path            = '/resume.fz-qqq.net/'
#   deploy.user            = 'fz-qqq.net'
#   deploy.password        = ENV['FTP_DEPLOY_PASSWORD']
# end

activate :deploy do |deploy|
  deploy.deploy_method = :git
  deploy.branch = 'master'
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
