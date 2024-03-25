# Interactive mode
docker run --name <NAME> --interactive --tty bash
docker stop <ID | NAME>

# Background mode
docker run --name <NAME> bash
docker exec <ID | NAME> touch file.txt

# Search for image
docker search ubuntu

# Create image
docker commit <ID | NAME> <REPOSITORY>
