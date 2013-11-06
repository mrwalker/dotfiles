#! /usr/bin/env ruby

require 'fileutils'

def link_configs(config_dir, platform)
  Dir.glob("#{config_dir}/#{platform}/.*").each do |f|
    link = f.gsub("#{config_dir}/#{platform}/", '')
    next if link == '.' || link == '..' || link == '.svn'
    FileUtils::rm_rf(link) if File.exists?(link) && File.directory?(link)
    FileUtils::rm_f(link) if File.exists?(link)
    FileUtils::ln_s(f, link)
  end
end

platform = ARGV[0]
platform ||= 'darwin'
config_dir = File.dirname(__FILE__)

link_configs(config_dir, platform)
link_configs(config_dir, 'shared')
