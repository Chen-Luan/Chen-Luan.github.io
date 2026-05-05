cd /d %~dp0
call .venv\Scripts\activate
mkdocs serve --livereload
pause