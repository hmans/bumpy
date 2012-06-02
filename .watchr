def run(cmd, msg = nil)
  puts "=== %s" % msg if msg
  puts "=== %s" % cmd
  system cmd
  puts "\n"
end

watch("spec/.*_spec\.rb") { |m| run("rspec %s" % m[0]) }
watch("lib/bumpy.rb") { |m| run("rspec spec/bumpy_spec.rb") }
watch("lib/bumpy/(.*)\.rb") { |m| run("rspec spec/%s_spec.rb" % m[1]) }
watch('^spec/(spec_helper|factories)\.rb') { |f| run "rake spec", "%s.rb has been modified" % f }

# Ctrl-\
Signal.trap('QUIT')   { run("bundle exec rake spec") }
# Ctrl-C
Signal.trap('INT')    { abort("\nQuitting.") }
