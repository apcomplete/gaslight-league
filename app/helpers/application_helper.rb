module ApplicationHelper
  BOOTSTRAP_FLASH_MSG = {
    success: 'alert-success',
    error: 'alert-danger',
    alert: 'alert-warning',
    notice: 'alert-success'
  }

  def admin_path
    if user_signed_in?
      trainers_path
    else
      new_user_session_path
    end
  end

  def current_leader_class(team_scorer)
    team_scorer.top_team.color
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
      delta.round(2)
    end
  end

  def bootstrap_class_for(flash_type)
    BOOTSTRAP_FLASH_MSG.fetch(flash_type.to_sym, flash_type.to_s)
  end
end
