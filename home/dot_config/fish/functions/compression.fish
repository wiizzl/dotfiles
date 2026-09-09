function compress
  tar -czf (string trim -r -c / $argv[1]).tar.gz (string trim -r -c / $argv[1])
end

alias decompress="tar -xzf"
