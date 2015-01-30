require 'powerdown/version'
require 'powerdown/usage'
require 'powerdown/parser'
require 'powerdown/generator'

class Powerdown

  def self.run! argv = ARGV
    args = argv.dup

    if args.empty?
      puts USAGE
    else
      source = args[0]
      make source
    end
  end

  def self.make source_path
    powerdown = new File.read(source_path)
    powerdown.make source_path + '.pptx'
  end

end