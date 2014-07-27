{\rtf1\ansi\ansicpg1252\cocoartf1187\cocoasubrtf390
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 #!/bin/bash\
rand=$\{rand:0:1\}\
\
function game \{\
	  read -p "Guessing a random one-digit number!" guess\
	  while  [[ $guess != $secret ]]; do\
		  read -p "Nope, try again!" guess\
	   done\
	   echo "Good job, $secret is it You're great at guessing!"\
\}\
\
function generate \{\
	  echo "A random number is:$rand"\
	  echo -e "Hint: type \\033[1m$o game\\033[0m for a fun diversion!"\
\}\
\
if [[ $1 =~ game|Game|GAME ]];  then\
	     game\
else\
	     generate}