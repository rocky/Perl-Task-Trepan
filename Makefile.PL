use strict; use warnings;
use inc::Module::Install;

name 'Task-Trepan';
name         'Task-Trepan';
abstract     'Install Devel::Trepan optional Perl Modules and debugger commands';
author       'Rocky Bernstein <rocky@cpan.org>';
version_from 'lib/Task/Trepan.pm';
license      'perl';

requires 'Devel::Trepan' => 0.001009;

# Adds a "shell" command
requires 'Devel::Trepan::Shell' => 0;

# Adds a "disassemble" command
requires 'Devel::Trepan::Disassmble' => 0;

# Alows my/our evaluation other than the most recent call frame
requires 'Eval::WithLexicals' => 0;

# Term::ReadLine::Perl adds better command completion
requires 'Term::ReadLine::Perl' => 0;

# Better eval result display
requires 'Term::ReadLine::Perl' => 0;

# Dynamically load Devel::Trepan from a running program
requires 'Enbugger' => 0;

auto_install;
WriteAll;
