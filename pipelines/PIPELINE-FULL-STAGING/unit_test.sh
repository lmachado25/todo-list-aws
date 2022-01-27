#!/bin/bash

source todo-list-aws/bin/activate
set -x
export PYTHONPATH="${PYTHONPATH}:$(pwd)"
echo "PYTHONPATH: $PYTHONPATH"
export DYNAMODB_TABLE=todoUnitTestsTable
export KEY_ID=ASIAXMDAQBKKEXIMAKNW
export ACCESS_KEY=1ZifwDHcDplmmzNWjj1QjkJcrcXV+mlKfpAfzZss
export SESSION_TOKEN=FwoGZXIvYXdzEKX//////////wEaDBVYtJIcFN80c1SCoCLBAQ5zNkb7xp66f+OpJyJdgsSgong51/aSG+frIASXTPc4pLsqI3zVwvODQ9C4+Bu6drwqowNM+3SFc1Lq9/CO/uGMR/sZq8ZBWDHws+hvJZU6byJ0K/RK252U6zX9Pcjp2REI3aB5Tvf+7D3eht4dJ07DONfDW860r6rh7ImdLLe+DqwDaEDyycSvZdH0MEbS01IwR5fmUToZ2GWnDII2hmaxhgSa403IrybzPYaRx6uYXmHqdNAWXAfAxnRQVbr+uLAo34XKjwYyLezqgnwaK02/rfHGVqq+a7RO5Pwxo4lT2xfj5k/KhmkTKx8WbkyxrYys0osfog==
    
python test/unit/TestToDo.py
pip show coverage
coverage run --include=src/todoList.py test/unit/TestToDo.py
coverage report -m
coverage xml