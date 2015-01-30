class Powerdown

  def initialize raw
    @raw = raw =~ /\A!DOWN/ ? raw : "!DOWN\n#{raw}"
    parse_slides
  end

  def parse_slides
    @slides = @raw.split(/^!DOWN\s*([a-z\s]*)$/).reject(&:empty?)
  end

end