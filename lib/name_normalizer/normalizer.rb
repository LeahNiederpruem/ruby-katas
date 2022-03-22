# frozen_string_literal: true

class NameNormalizer
  def initialize(name, surname = '', middlename = '', suffix = '')
    @name = name.strip
    @surname = surname.strip
    @middlename = middlename.strip
    @suffix = suffix.strip
  end

  def normalize
    return name if surname.empty?

    return "#{surname}, #{name}" if middlename.empty?

    "#{surname}, #{name} #{parse_middlename(middlename)}."
  end

  private

  def parse_middlename(middle)
    middlenames = []

    middle.split(' ').each do |name|
      middlenames.append(name[0])
    end

    middlenames.join('. ')
  end

  attr_reader :name, :surname, :middlename, :suffix
end
