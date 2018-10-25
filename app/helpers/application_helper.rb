module ApplicationHelper
  def indented_render(num, *args)
    # byebug
    puts render(*args)
  end
end
