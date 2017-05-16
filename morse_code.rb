#define a method that takes in a string
#the string is converted into dots and dashes
#length of a dot is one unit
#length of a dash is three units
#space between is one unit
#space between letters is three units
#space between words is seven units
#units ON (dots/ dashes) units OFF(spaces)


def string_to_morse_code(str)
  morse_code = {'A'=>". ..." ,'B'=>"... . . .",'C'=>"... . ... .",'D'=>"... . .",'E'=>".",'F'=>". . ... .",'G'=>"... ... .",'H'=>". . . .",'I'=>". .",'J'=>". ... ... ...",'K'=>"... . ...",'L'=>". ... . .",
  'M'=>"... ...",'N'=>"... .",'O'=>"... ... ...",'P'=>". ... ... .",'Q'=>"... ... . ...",'R'=>". ... .",'S'=>". . .",'T'=>"...",'U'=>". . ...",'V'=>". . . ...",'W'=>". ... ...",'X'=>"... . . ...",
  'Y'=>"... . ... ...", 'Z'=>"... ... . ."}
  new_array = str.chars
  morse_code_array = []
  new_array.each do |x|
    morse_code_array.push(morse_code[x])
  end
  morse_code_array.join('')

end
require 'pry';binding.pry
