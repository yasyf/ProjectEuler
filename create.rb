#!/usr/bin/env ruby


TEMPLATE ="""#!/usr/bin/env ruby

def main

end

main()

"""

def new
  n = ARGV.last.to_s
  FileUtils.mkdir n
  File.open("#{n}/#{n}.rb", 'w') do |f|
    f.puts TEMPLATE
  end
end
