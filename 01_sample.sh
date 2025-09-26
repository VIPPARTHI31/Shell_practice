#!/bin/bash
# Conversation using person1 and person2 variables
 
# Define persons
person1="Ramesh"
person2="Suresh"
 
# Define dialogue..
line1="Hello $person2, how are you?"
line2="I am good, $person1. What about you?"
line3="I'm fine too. $person2 coming to the office tomorrow?"
line4="Yes, $person1 will be there. Let's meet at lunch."
line5="Sure, see you then!"
 
# Print conversation
echo "$person1: $line1"
echo "$person2: $line2"
echo "$person1: $line3"
echo "$person2: $line4"
echo "$person1: $line5"