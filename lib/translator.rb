# require modules here
require 'pry' 
require 'yaml'
def load_library(yaml_file)
   response = {"get_meaning" => {}, "get_emoticon" => {}}
  library = YAML.load_file(yaml_file)
  library.each do |trans, emos|
    response["get_meaning"][emos[1]] = trans
    response["get_emoticon"][emos[0]] = emos[1]
  
  end
  response
  
end


def get_japanese_emoticon(yaml_file, emoticon)
  a = load_library(yaml_file)
  a["get_emoticon"].each do |english_emote, japanese_emote|
    
    
    
    if a["get_emoticon"].include?(english_emote)
     
     binding.pry
      japanese_emote
    else
      "sorry"
  
  
  
end
  
end
end

def get_english_meaning
  # code goes here
end

