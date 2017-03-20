require 'lib/paper_type'

#class PaperSizer

  PAPER_SIZES =
  [
  PaperType.new(format: :folio, name: :imperial,       height_max: 50.0, height_min: 45.6, width_max: 35.0, width_min: 31.1),
  PaperType.new(format: :folio, name: :super_royal,    height_max: 45.5, height_min: 42.1, width_max: 31.0, width_min: 25.1),
  PaperType.new(format: :folio, name: :royal,          height_max: 42.1, height_min: 37.1, width_max: 31.0, width_min: 25.1),
  PaperType.new(format: :folio, name: :super_median,   height_max: 37.0, height_min: 35.1, width_max: 25.0, width_min: 22.1),
  PaperType.new(format: :folio, name: :median_1,       height_max: 35.0, height_min: 31.1, width_max: 25.0, width_min: 22.1),
  PaperType.new(format: :folio, name: :median_2,       height_max: 31.0, height_min: 28.0, width_max: 25.0, width_min: 22.6),
  PaperType.new(format: :folio, name: :super_chancery, height_max: 34.0, height_min: 31.1, width_max: 22.5, width_min: 15.5),
  PaperType.new(format: :folio, name: :chancery,       height_max: 31.0, height_min: 25.5, width_max: 22.5, width_min: 15.5),
  PaperType.new(format: :folio, name: :mezzo_median,   height_max: 25.6, height_min: 24.0, width_max: 19.0, width_min: 15.5),
  PaperType.new(format: :agenda_quarto, name: :imperial,     height_max: 50.0, height_min: 45.6, width_max: 20.0, width_min: 15.0),
  PaperType.new(format: :agenda_quarto, name: :super_royal,  height_max: 45.5, height_min: 42.1, width_max: 15.9, width_min: 10.0),
  PaperType.new(format: :agenda_quarto, name: :royal,        height_max: 42.0, height_min: 37.1, width_max: 15.9, width_min: 10.0),
  PaperType.new(format: :agenda_quarto, name: :super_median, height_max: 37.0, height_min: 35.1, width_max: 12.5, width_min: 9.0),
  PaperType.new(format: :agenda_quarto, name: :median,       height_max: 35.0, height_min: 31.1, width_max: 12.5, width_min: 9.0),
  PaperType.new(format: :agenda_quarto, name: :chancery,     height_max: 31.0, height_min: 25.5, width_max: 11.3, width_min: 7.8),
  PaperType.new(format: :agenda_quarto, name: :mezzo_median, height_max: 25.6, height_min: 24.0, width_max: 9.5,  width_min: 7.7),
  PaperType.new(format: :quarto, name: :super_royal,  height_max: 31.0, height_min: 25.1, width_max: 22.7, width_min: 21.0),
  PaperType.new(format: :quarto, name: :royal,        height_max: 31.0, height_min: 25.1, width_max: 21.0, width_min: 17.5),
  PaperType.new(format: :quarto, name: :super_median, height_max: 25.0, height_min: 22.1, width_max: 18.5, width_min: 17.5),
  PaperType.new(format: :quarto, name: :median,       height_max: 25.0, height_min: 22.1, width_max: 17.4, width_min: 15.6),
  PaperType.new(format: :quarto, name: :chancery,     height_max: 22.5, height_min: 15.5, width_max: 15.5, width_min: 12.7),
  PaperType.new(format: :quarto, name: :mezzo_median, height_max: 19.0, height_min: 15.5, width_max: 12.6, width_min: 12.0),
  PaperType.new(format: :octavo, name: :super_royal,    height_max: 22.7, height_min: 21.1, width_max: 15.5, width_min: 13.0),
  PaperType.new(format: :octavo, name: :royal,          height_max: 21.0, height_min: 17.5, width_max: 15.5, width_min: 12.6),
  PaperType.new(format: :octavo, name: :super_median,   height_max: 18.5, height_min: 17.7, width_max: 12.5, width_min: 11.1),
  PaperType.new(format: :octavo, name: :median,         height_max: 17.4, height_min: 15.6, width_max: 12.5, width_min: 11.1),
  PaperType.new(format: :octavo, name: :chancery,       height_max: 15.5, height_min: 12.7, width_max: 11.2, width_min: 7.7),
  PaperType.new(format: :octavo, name: :mezzo_median,   height_max: 12.8, height_min: 12.0, width_max: 9.5,  width_min: 7.7),
  PaperType.new(format: :sixteen_mo, name: :super_royal,  height_max: 15.5, height_min: 12.6, width_max: 11.4, width_min: 10.5),
  PaperType.new(format: :sixteen_mo, name: :royal,        height_max: 15.5, height_min: 12.6, width_max: 10.4, width_min: 8.7),
  PaperType.new(format: :sixteen_mo, name: :super_median, height_max: 12.5, height_min: 11.1, width_max: 10.4, width_min: 8.7),
  PaperType.new(format: :sixteen_mo, name: :median,       height_max: 12.5, height_min: 11.1, width_max: 8.7,  width_min: 7.8),
  PaperType.new(format: :sixteen_mo, name: :chancery,     height_max: 11.3, height_min: 7.7,  width_max: 7.7,  width_min: 6.3),
  PaperType.new(format: :sixteen_mo, name: :mezzo_median, height_max: 9.5,  height_min: 7.7,  width_max: 6.3,  width_min: 6.0)
  ]

  def possible_matches
    @possible_matches ||= []
  end

  def find_matches height, width
    possible_matches
    PAPER_SIZES.each do |paper_size|
      height_range = (paper_size.height_min .. paper_size.height_max)
      width_range  = (paper_size.width_min  .. paper_size.width_max)
      if height_range.include?(height.to_f) && width_range.include?(width.to_f)
        possible_matches << paper_size
      end
    end
    possible_matches
  end

  def query_lines chain
    format_groups = [[:folio, :agenda_quarto, :octavo] , [:quarto, :sixteen_mo ]]
    if chain == 'vertical'
      possible_matches.each do |match|
        if format_groups[1].include? match.format
          possible_matches.delete match
        end
      end
    elsif chain == 'horizontal'
      possible_matches.each do |match|
        if format_groups[0].include? match.format
          possible_matches.delete match
        end
      end
    end
    possible_matches
  end

  def query_edge deckle
    return possible_matches unless deckle == 'yes'
    names = []
    possible_matches.each do |match|
      unless names.include? match.name
        names << match.name
      end
    end
    if names.include?(:median) && names.include?(:chancery)
      possible_matches.each do |match|
        if match.name == :median
          possible_matches.delete match
        end
      end
    elsif names.include?(:chancery) && names.include?(:mezzo_median)
      possible_matches.each do |match|
        if match.name == :chancery
          possible_matches.delete match
        end
      end
    end
    possible_matches
  end

  def compare_two_matches
    size_0 = possible_matches[0].height_max + possible_matches[0].height_min + possible_matches[0].width_max + possible_matches[0].width_min
    size_1 = possible_matches[1].height_max + possible_matches[1].height_min + possible_matches[1].width_max + possible_matches[1].width_min
    if size_0 > size_1
      bigger  = possible_matches[0]
      smaller = possible_matches[1]
    elsif size_1 > size_0
      bigger  = possible_matches[1]
      smaller = possible_matches[0]
    end
    "It's either a very large #{smaller} or a very cut-down #{bigger}." #given that #{more_common} is much more common than #{less_common}, it's probably a #{more_common}."
  end
#end
