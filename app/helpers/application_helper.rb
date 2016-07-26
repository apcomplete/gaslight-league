module ApplicationHelper
  def category_row_class(row)
    c = "category__wrapper"
    if row.count == 2
      c += " category__wrapper--two-item"
    end
    return c
  end
end
