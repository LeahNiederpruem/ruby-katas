# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname)
    return name if surname.empty?
  end
end
