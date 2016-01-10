require 'singleton'

class AppConfig
	include Singleton

	def self.servers 
		YAML.load(File.read("config/servers.yml")).symbolize_keys[server_type.to_sym]
	end

	def self.roles
    YAML.load(File.read("config/#{server_type}_roles.yml"))
	end
	
	private

	def self.server_type
    YAML.load(File.read("config.yml"))['mode']
	end
end