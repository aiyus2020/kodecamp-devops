#!/bin/bash

TODO_FILE=~/todo.txt
touch "$TODO_FILE"   

while true; do
  echo ""
  echo "==== TODO MENU ===="
  echo "1. View all tasks"
  echo "2. Add a new task"
  echo "3. Delete a task"
  echo "4. Exit"
  echo "==================="
  read -p "Choose an option [1-4]: " choice

  if [ "$choice" = "1" ]; then
    echo "Your tasks:"
    nl "$TODO_FILE"

  elif [ "$choice" = "2" ]; then
    read -p "Enter new task: " task
do a simple explaination of tghis code 
    echo "$task" >> "$TODO_FILE"
    echo "Task added!"

  elif [ "$choice" = "3" ]; then
    nl "$TODO_FILE"
    read -p "Enter task number to delete: " num
    sed -i "${num}d" "$TODO_FILE" 
    echo "Task deleted!"

  elif [ "$choice" = "4" ]; then
    echo "Goodbye!"
    exit 0

  else
    echo "Invalid option. Try again."
  fi
done
