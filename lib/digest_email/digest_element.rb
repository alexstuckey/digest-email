require File.dirname(__FILE__) + '/digest_element'

module DigestEmail

  class DigestElement
    def initialize
      @children = []
    end
  end

  # Render each child, join all the html and wrap it
  def render
    wrap @children.map(&:render).join
  end

  # By default don't wrap with anything
  def wrap(inner)
    inner
  end
end