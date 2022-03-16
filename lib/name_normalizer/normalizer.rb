# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname = '')
    name = name.strip
    surname = surname.strip

    return name if surname.empty?

    "#{surname}, #{name}"
  end
end
