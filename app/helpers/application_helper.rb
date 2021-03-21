module ApplicationHelper
  def bookmark_text(value)
    return value ? "remover" : "favoritar"
  end
end
