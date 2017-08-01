require 'yaml'
configuration = YAML.load File.read("#{Dir.pwd}/maclover7.yml")

require 'securerandom'
signature = "#{configuration['name']}:#{SecureRandom.hex(3)}"

task :push_docker do
  sh "docker build -t #{signature} ."

  sh "docker tag #{signature} maclover7/#{signature}"
  sh "docker push maclover7/#{signature}"
end

task :push_macluster do
  puts "pushed to macluster!"
end

task deploy: [:push_docker, :push_macluster] do
  puts "deploy task"
end
