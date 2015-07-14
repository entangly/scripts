function cd {
   builtin cd "$@" && ls -F
   }

#PS1='[\u@\h \W]\$ '  # Default
PS1='\[\e[1;31m\][\u@\h \W]\$\[\e[0m\] '

alias venv='source venv/bin/activate'
alias run='python manage.py runserver 0.0.0.0:8000'
alias emacs='emacs -nw'
