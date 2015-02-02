require 'httparty'

config = YAML.load_file(File.join(File.dirname(__FILE__), "..", "..", "config", "config.yml"))

Before do
  @url = config['base_url']
end