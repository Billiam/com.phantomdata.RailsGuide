require 'kramdown'

unless File.directory?('./source/sections')
  raise "Could not find the sections folder.  Are you executing the build script from the root folder?"
end

header = File.read('./source/templates/header.html')
footer = File.read('./source/templates/footer.html')

Dir.entries('./source/sections').each do |input_path|
  next unless input_path.include?('.md')
  file_contents = File.read('./source/sections/' + input_path)
  output = header
  output += Kramdown::Document.new(file_contents).to_html
  output += footer

  output_path = './build/' + input_path.gsub('.md','.html')
  File.open(output_path, "wb") { |f| f.write(output) }
end

FileUtils.copy_entry './source/assets', './build/assets'