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

    return "#{surname}, #{name} #{middlename[0]}." if suffix.empty?

    "#{surname}, #{name} #{middlename[0]}., #{suffix}"
  end

  private

  attr_reader :name, :surname, :middlename, :suffix
end
