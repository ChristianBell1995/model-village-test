module ApplicationHelper
  def sortable(column, direction, title = nil)
    title ||= column.titleize
    link_to title, sort: column, direction: direction
  end
end

