require File.join( Rails.root, "config/initializers/app_config" )

namespace :element do
ENV['SERVER']   = AppConfig.servers
 desc "all test"
  task all: :environment do
    task('spec').clear
    Rake::Task["element:main"].invoke
  end


desc "check main page"
  task :main => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/main_page_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_main.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end

desc "basic auth"
  task :basicauth => :environment do
    task('spec').clear

    RSpec::Core::RakeTask.new(:spec) do |t|
      r_date = Time.now.strftime("%Y-%m-%d")
      r_time = Time.now.strftime("%H-%M")

      t.pattern       = './spec/elements/basicauth_spec.rb'
      t.rspec_opts    = "--format html --out reports/#{r_date}/#{r_time}_basicauth.html"
      t.fail_on_error = false
      t.verbose = false
    end 
    Rake::Task["spec"].execute 
end
end