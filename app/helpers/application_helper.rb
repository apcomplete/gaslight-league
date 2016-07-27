module ApplicationHelper
  def current_leader
    "yellow"
  end

  def category_row_class(row)
    c = "category__wrapper"
    if row.count == 2
      c += " category__wrapper--two-item"
    end
    return c
  end

  def rounded_delta(delta)
    if delta % 1 == 0
      delta.to_i
    else
      delta
    end
  end
end
