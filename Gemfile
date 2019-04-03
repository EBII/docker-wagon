source 'https://rubygems.org'

# Use https for github source
git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'locomotivecms_wagon', github: 'locomotivecms/wagon', branch: 'master' 
gem 'locomotivecms_steam', github: 'locomotivecms/steam', branch: 'master'


gem 'byebug'
gem 'guard-livereload', '~> 2.5.1'
