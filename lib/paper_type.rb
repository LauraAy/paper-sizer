class PaperType
  attr_accessor :format
  attr_accessor :name
  attr_accessor :height_max
  attr_accessor :height_min
  attr_accessor :width_max
  attr_accessor :width_min

  def initialize options={}
    @format     = options[:format]
    @name       = options[:name]
    @height_max = options[:height_max]
    @height_min = options[:height_min]
    @width_max  = options[:width_max]
    @width_min  = options[:width_min]
  end

  def to_s
    translate_name
  end

  def translate_name
    "#{name} #{format}".upcase.gsub('_' , '-').sub('SIXTEEN-MO' , '16mo').sub((/MEDIAN-[12]/), 'MEDIAN')
  end

  def == other
    return false unless other.is_a?(PaperType)
    self.format == other.format && self.name == other.name
  end
end
