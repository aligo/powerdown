require 'powerpoint'

class Powerdown

  def make pptx_path
    @deck = Powerpoint::Presentation.new
    @slides.each do |slide|
      case slide[:type]
      when SLIDE_TYPE_INTRO
        @deck.add_intro slide[:title], slide[:subtitle]
      when SLIDE_TYPE_ITEMS
        @deck.add_textual_slide slide[:title], slide[:items]
      end
    end
    @deck.save pptx_path
  end

end