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

case ENV['TARGET'].to_s.downcase
when 'production'
  activate :deploy do |deploy|
    deploy.build_before    = true
    deploy.deploy_method   = :ftp
    deploy.host            = 'sv9.star.netowl.jp'
    deploy.path            = '/'
    deploy.user            = 'fz-qqq.net'
    deploy.password        = ENV['FTP_DEPLOY_PASSWORD']
  end
else
  activate :deploy do |deploy|
    deploy.build_before    = true
    deploy.deploy_method   = :ftp
    deploy.host            = 'sv9.star.netowl.jp'
    deploy.path            = '/resume.fz-qqq.net/'
    deploy.user            = 'fz-qqq.net'
    deploy.password        = ENV['FTP_DEPLOY_PASSWORD']
  end
end
