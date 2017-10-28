SHELL ?=

wxvers : wxvers.xcconfig ; python -c "import re; open('$@', 'wb').write(re.search(r'(?m)^ *DYLIB_CURRENT_VERSION += +(.+) *$$', open('$<', 'rb').read()).group(1))"

wxvers.xcconfig : wxWidgets ; wget --no-check-certificate https://raw.githubusercontent.com/wxWidgets/wxWidgets/master/build/osx/wxvers.xcconfig

wxWidgets : ; MKDIR wxWidgets
