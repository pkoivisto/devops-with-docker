# Instructions

The solutions for exercise 2.3 is given in the file `docker-compose.yml`. 
While the solution is relatively straightforward, here are a few instructions to make
checking the solution easy.

1. Ensure the example-backend and example-frontend applications are found at the relative paths
`../../../material-applications/example-backend` and `../../../material-applications/example-frontend`
respectively.
2. Ensure the example-backend and example-frontend applications have corresponding Dockerfiles as given
by the solution to exercise 1.14. For convenience, the correct Dockerfiles are also included in this directory.
The correct state can thus be reached with executing the commands `cp backend.Dockerfile ../../../material-applications/example-backend/Dockerfile` and `cp frontend.Dockerfile ../../../material-applications/example-frontend/Dockerfile`.
3. Everything should be set up by now. Running the application with `docker compose up` should now work.