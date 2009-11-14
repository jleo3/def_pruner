module DefPruner
  def grep_for_method(method_name)
    system "grep -r #{method_name} ."
  end
end
=begin
grepp:
find . -type d -name $2 -prune -false -o -type f -print0 | xargs -0r grep --color -H $1 .
=end
