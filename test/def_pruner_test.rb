require 'lib/def_pruner'
require File.dirname(__FILE__) + '/test_helper'

class DefPrunerTest < Test::Unit::TestCase
  include DefPruner

  def test_def_pruner_greps_for_method_name
    method_name = 'foo_function'
    self.expects(:system).with(regexp_matches(/#{method_name}/))
    grep_for_method(method_name)
  end

end
