# My-bash-aliases
shorten your bash commands by adding this file, its what i use and you might want to to


Quote (from http://www.tldp.org/LDP/abs/html/aliases.html) [

A Bash alias is essentially nothing more than a keyboard shortcut, an abbreviation, a means of avoiding typing a long command sequence. If, for example, we include alias lm="ls -l | more" in the ~/.bashrc file, then each lm [1] typed at the command-line will automatically be replaced by a ls -l | more. This can save a great deal of typing at the command-line and avoid having to remember complex combinations of commands and options. Setting alias rm="rm -i" (interactive mode delete) may save a good deal of grief, since it can prevent inadvertently deleting important files.

In a script, aliases have very limited usefulness. It would be nice if aliases could assume some of the functionality of the C preprocessor, such as macro expansion, but unfortunately Bash does not expand arguments within the alias body. [2] Moreover, a script fails to expand an alias itself within "compound constructs," such as if/then statements, loops, and functions. An added limitation is that an alias will not expand recursively. Almost invariably, whatever we would like an alias to do could be accomplished much more effectively with a function.

]
