require 'yaml'

comments = YAML::load(File.open("#{RAILS_ROOT}/test/fixtures/comments.yml"))
comments=comments.select {|k,v| v['sid']=='2008/5/29/102052/035' || v['sid']=='2008/5/4/124048/6650'|| v['sid']== '2008/5/9/82026/22719'}

puts comments.to_yaml
