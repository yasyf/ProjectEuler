#!/usr/bin/env ruby

require 'fileutils'

TEMPLATE ="""#!/usr/bin/env ruby

def main

end

puts main()

"""

def main
  n = ARGV.last.to_s
  FileUtils.mkdir n
  File.open("#{n}/#{n}.rb", 'w') do |f|
    f.write TEMPLATE
  end
  `subl #{n}/#{n}.rb`
end

main()
