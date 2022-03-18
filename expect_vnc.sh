#!/usr/bin/expect -f
spawn vncpasswd
expect  "*word:*"
send "hero1122\n"
expect  "*Verify:*"
send "hero1122\n"
expect eof
