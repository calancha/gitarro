[Documentation index](../README.md#documentation)

# Rubygem doc:
http://www.rubydoc.info/gems/gitarro/

# How to contribute to gitarro development

So you want to be a gitarro hacker!

## Where to start?

Look at open issues with label: 'easy-fix'
https://github.com/openSUSE/gitarro/issues?q=is%3Aopen+is%3Aissue+label%3Aeasy-fix

## Issues before big PRs aka features

If you want to contribute, just look at current issues and start to discuss/thinking how you will solve some of them.
If you have in mind a new feature, just **open an issue first.**
Instead of Proposing directly a Pull Request, opening an issue where you describe what you want to do, how, etc.,
will give you directly a feedback, and have a sense of knowing what you will do by describing, discussing it **before**,
will  increase the ease you will code ( discussing the design before, instead of changing it after).
For small bug-fixing/improvements of course you don't need an Issue referenced.

## Ruby Workflow

1. Run rake locally with `rake`.
2. Run `rake spec`. [Read more here](https://github.com/openSUSE/gitarro/blob/master/doc/TESTS.md#acceptance-tests)
3. Run reek for improve your code `rake reek` or `reek your_file.rb`

## GIT Workflow

Please follow these simple rules to make everyone's life easier, including yours :-)

1. First of all, fork the gitarro repository.

2. Then create a new branch at your forked repository, to create your feature or fox.

3. Work on the feature fix. You should have only one commit at each time, so we strongly suggest you use 'git commit --amend' and 'git push -f'. Otherwise you can perform a squash, but it is more complicated.

4. When you are happy, ensure that all [tests](TESTS.md) are passing.

5. Create a Pull Request and describe what your changes do. Travis will run some tests, so if any of them fails you will need to fix the problems.

6. Somebody will review your Pull Request ASAP, and will merge it or request some changes if needed.

[Documentation index](../README.md#documentation)
