#!/bin/bash
# Start both frontend and backend in development mode

# Start backend
(cd backend && dotnet run &)
BACKEND_PID=$!

# Start frontend
(cd frontend && npx quasar dev &)
FRONTEND_PID=$!

# Wait for both processes
wait $BACKEND_PID
wait $FRONTEND_PID
