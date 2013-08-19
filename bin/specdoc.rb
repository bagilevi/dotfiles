filename = ARGV.first
keywords = %w(describe feature context it scenario)

File.open(filename).each do |line|
  if keywords.any?{|k| line.include? k}
    line = line.sub(%r{(describe|feature|context|it|scenario)\s+(.+)\s+(do|\{)}, '\2')
    line = line.sub(%r{^(\s*)"(.+)"[^"]*$}, '\1\2')
    puts line.rstrip
  end
end
