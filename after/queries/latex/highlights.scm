;; extends
((line_comment)) @nospell

((generic_command
  command: (command_name) @_name
  arg: (curly_group(_) @nospell))
  (#any-of? @_name 
   "\\lstset" 
   "\\geometry"
   "\\setcounter"
   "\\DeclareFieldFormat"
   "\\hypersetup"
   "\\addcontentsline"))

