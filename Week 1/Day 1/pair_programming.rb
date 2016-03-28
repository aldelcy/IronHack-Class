class ProgrammingLanguage
  attr_accessor :name, :age, :type
  def initialize(name, age, type)
    @name = name
    @age = age
    @type = type
  end
end

  ruby = ProgrammingLanguage.new("Ruby", 21, "Dynamic")
  python = ProgrammingLanguage.new("Python", 24, "Dynamic")
  javascript = ProgrammingLanguage.new("JavaScript", 20, "Dynamic")
  go = ProgrammingLanguage.new("Go", 6, "Static")
  rust = ProgrammingLanguage.new("Rust", 5, "Static")
  swift = ProgrammingLanguage.new("Swift", 2, "Static")
  java = ProgrammingLanguage.new("Java", 20, "Static")

  array_of_languages = [ruby, python, javascript, go, rust, swift, java]

def array_printer(array)
  array.each do | language |
    puts "Language: #{language.name} |  Age: #{language.age} |  Type System: #{language.type}"
  end
end

#array_printer(array_of_languages)

#====AGE ADD 1============================================

aged_languages = array_of_languages.map do |x|
	x.age + 1
	x
end

#puts "The programming languages aged one year are: "

#array_printer(aged_languages)

#====SORT============================================

sorted_languages = array_of_languages.sort{ |x,y| x.age <=> y.age}

#array_printer(sorted_languages)

#=====DELETE==============================================

delete_lang = array_of_languages.delete_if {|lang| lang.name == "Java"}

#array_printer(delete_lang)

#=====SHUFFLE==============================================

shuffle_lang = sorted_languages.shuffle

#array_printer(shuffle_lang)

#=====OUR OWN==============================================

collect_lang = array_of_languages.collect{|x| 
	x.name += "."
	x
}
#array_printer(collect_lang)