# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname = '', middle = '')
    name = name.strip
    surname = surname.strip
    middle = middle.strip

    return name if surname.empty?

    return "#{surname}, #{name}" if middle.empty?

    "#{surname}, #{name} #{middle[0]}."
  end
end
