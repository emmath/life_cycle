module ApplicationHelper
  def title(*parts)
    unless parts.empty?
      content_for :title do
<<<<<<< HEAD
        (parts << "life_cycle").join(" - ")
=======
        (parts << "Life Cycle").join(" - ")
>>>>>>> 2a03d07a601b50fc55503f52f8bb35acc012452a
      end
    end
  end
end
