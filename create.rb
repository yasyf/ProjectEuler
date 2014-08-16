#!/usr/bin/env ruby
require 'rest_client'
require 'fileutils'
require 'ostruct'
require 'erb'
require 'json'

class ProjectEulerQuestion < OpenStruct
  def initialize(n)
    response = RestClient.get "https://www.kimonolabs.com/api/735b3r5e?apikey=c70ab7eb0f58c87669ff7bf74b2dc551&kimpath1=problem%3D#{n}"
    data = JSON.parse(response)['results']['question']
    h = data.first
    @problem = h['problem']
    @title = h['title']
    @date = h['date']
    @question = data.map { |r| r['question']  }.join("\n")
  end
  def render
    ERB.new(template).result(binding)
  end
  def template
    File.open('template.rb.erb', 'r').read
  end
end


def main
  n = ARGV.last.to_s
  FileUtils.mkdir_p n
  File.open("#{n}/#{n}.rb", 'w') do |f|
    f.write ProjectEulerQuestion.new(n).render
  end
  `subl #{n}/#{n}.rb`
  `open https://projecteuler.net/problem=#{n}`
end

main()
