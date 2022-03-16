# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname = '', middle = '')
    name = name.strip
    surname = surname.strip
    middle = middle.strip unless middle.is_a?(Array)

    return name if surname.empty?

    return "#{surname}, #{name}" if middle.empty?

    return "#{surname}, #{name} #{middle[0]}." unless middle.is_a?(Array)

    "#{surname}, #{name} #{parse_middlename(middle)}."
  end

  private

  def parse_middlename(middle)
    middlenames = []
    middle.each do |name|
      middlenames.append(name.strip[0])
    end
    middlenames.join('. ')
  end
end
