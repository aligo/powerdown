require 'powerpoint'

class Powerdown

  def make pptx_path
    @deck = Powerpoint::Presentation.new
    @slides.each do |slide|
      @deck.add_textual_slide 'xxx', [slide]
    end
    @deck.save pptx_path
  end

end