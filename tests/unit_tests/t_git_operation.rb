#! /usr/bin/ruby

require_relative 'helper'
require 'ostruct'
# Test the option parser
class GitarroGitop < Minitest::Test
  def test_gitop
    @full_hash = { repo: 'openSUSE/gitarro', context: 'python-t', description:
                   'functional', test_file: 'gino.sh', file_type: '.sh',
                   git_dir: 'gitty', https: true, changed_since: -1 }
    gb = Backend.new(@full_hash)
    # crate fake object for internal class external repo
    # FIXME: this could improved creating a full mock obj
    pr = 'fake'
    GitOp.new(gb.git_dir, pr, @full_hash)
    puts gb.git_dir
  end

  def test_gitop_dirnonexist
    @full_hash = { repo: 'openSUSE/gitarro', context: 'python-t', description:
                   'functional', test_file: 'gino.sh', file_type: '.sh',
                   git_dir: '/tmp/gitarro_test',
                   https: true, changed_since: -1 }
    gb = Backend.new(@full_hash)
    # crate fake object for internal class external repo
    # FIXME: this could improved creating a full mock obj
    pr = 'fake'
    git = GitOp.new(gb.git_dir, pr, @full_hash)
    git.merge_pr_totarget('master', 'master')
    assert(true, File.directory?(gb.git_dir))
  end
end
