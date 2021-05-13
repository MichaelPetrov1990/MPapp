# encoding: utf-8
branches = STDIN.read.chomp
if !branches.empty?
  branch = branches.split("\n").map(&:strip)[0].split(' ').map(&:strip)[-1].strip
  third_line = branches.split("\n").map(&:strip).map do |line| 
      if line == "nothing to commit, working tree clean"
        @is_clean = true
      end
    end
    if @is_clean
      puts " ✓ #{branch}"
    else
      puts "\n\e[0;31m\ ✗ #{branch}"
    end
end


# is_clean = third_line == "nothing to commit, working tree clean"
  # third_line = branches.split("\n").map(&:strip)[3]
