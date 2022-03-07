# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname, middlename = '')
    return name.strip if surname.empty?

    return "#{surname.strip}, #{name.strip}" if middlename.empty?

    "#{surname.strip}, #{name.strip} #{middlename.strip[0]}."
  end
end
