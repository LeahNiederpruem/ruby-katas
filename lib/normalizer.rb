# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname)
    return name.strip if surname.empty?

    "#{surname.strip}, #{name.strip}"
  end
end
