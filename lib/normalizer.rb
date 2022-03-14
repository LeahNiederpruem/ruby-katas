# frozen_string_literal: true

class NameNormalizer
  def initialize(name = '', surname = '', middlename = '')
    @name = name.strip
    @surname = surname.strip
    @middlename = middlename.strip
  end

  def normalize
    return name if surname.empty?

    return "#{surname}, #{name}" if middlename.empty?

    "#{surname}, #{name} #{middlename[0]}."
  end

  private

  attr_reader :name, :surname, :middlename
end
