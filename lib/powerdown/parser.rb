class Powerdown

  SLIDE_TYPE_INTRO = 1
  SLIDE_TYPE_ITEMS = 2

  def initialize raw
    @raw = raw =~ /\A!DOWN/ ? raw : "!DOWN\n#{raw}"
    parse_slides
    p @slides
  end

  def parse_slides
    @slides = @raw.split(/^!DOWN\s*([a-z\s]*)$/).reject(&:empty?).each_with_index.map do |lines, i|
      lines = lines.split("\n").reject(&:empty?)
      if ( i == 0 ) && ( lines.count <= 2 )
        {
          type: SLIDE_TYPE_INTRO,
          title: lines[0],
          subtitle: lines[1] || ''
        }
      else
        {
          type: SLIDE_TYPE_ITEMS,
          title: lines[0],
          items: lines.slice(1, lines.count - 1).map do |item|
            item.sub(/^\s*-\s*/, '').strip
          end
        }
      end
    end
  end

end