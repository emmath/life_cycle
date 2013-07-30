module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
        (parts << "life_cycle").join(" - ")
      end
    end
  end
end
