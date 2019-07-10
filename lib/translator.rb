# require modules here

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


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end

