module ApplicationHelper
  def bookmark_text(value)
    return value ? true : false
  end

  def to_real(value)
    number_to_currency(value, locale: :"pt-BR", precision: 2, unit: "R$", separator: ",", delimiter:".")
  end
end
