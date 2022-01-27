#!/bin/bash

source todo-list-aws/bin/activate
set -x
export PYTHONPATH="${PYTHONPATH}:$(pwd)"
echo "PYTHONPATH: $PYTHONPATH"
export DYNAMODB_TABLE=todoUnitTestsTable
export KEY_ID=ASIAXMDAQBKKEXIMAKNW
export ACCESS_KEY=2KHnHM4+J7EuKYtJxjM2iZAsBHu3PqWqdUDGOJYC
export SESSION_TOKEN=FwoGZXIvYXdzEKv//////////wEaDGmSqv5bGUoZgw2rnyLBAcNV/ohosiHuKkZrwdszpQa36uf1qQNqNymQCB2fpZvETg+G0T0pYbRO4exeQpaPJFfTj5QEo6KPp/gthytsEyCTfhFgazAhFOQsuHb6EjDTxavKiAfrpCtEIQFJYW/gj9tc0rLU7iDOAbpNiaNH3XSYSJNLztMWaN3QlYDY+PThkZq5Ww4fGbwlcrxl56JlNlWsstEp3AmmRZuHIdTia1kPGNUM9VGfJLXyCnflTleW8b2E0U0ZgqAW3XHkEnRCLgMo87TLjwYyLS697tGegabCh6Vo8XAExkwSeIej+Ohn1YX0yu6sUtWwzSXayVeYGAh6O8R3zw==
    
python test/unit/TestToDo.py
pip show coverage
coverage run --include=src/todoList.py test/unit/TestToDo.py
coverage report -m
coverage xml