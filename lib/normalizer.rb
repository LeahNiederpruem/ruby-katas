# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname, middlename = '')
    name = name.strip
    surname = surname.strip
    middlename = middlename.strip

    return name if surname.empty?

    return "#{surname}, #{name}" if middlename.empty?

    "#{surname}, #{name} #{middlename[0]}."
  end
end
