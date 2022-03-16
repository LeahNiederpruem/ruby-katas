# frozen_string_literal: true

class NameNormalizer
  def normalize(name, surname = '', middle = '')
    name = name.strip
    surname = surname.strip
    middle = middle.strip

    return name if surname.empty?

    return "#{surname}, #{name}" if middle.empty?

    "#{surname}, #{name} #{parse_middlename(middle)}."
  end

  private

  def parse_middlename(middle)
    middlenames = []

    middle.split(' ').each do |name|
      middlenames.append(name[0])
    end

    middlenames.join('. ')
  end
end
