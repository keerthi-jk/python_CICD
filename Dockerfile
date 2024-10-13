#get latest ubuntu base image from docker hub
FROM ubuntu AS build 

# Set the working directory in the image
#created a directory call /app and cd's to that directory
WORKDIR /app

# Copy the files from the host file system to the image file system
#copies contents from our system's current folder (like app files,docker files to /app in ubuntu base image  )
COPY . /app

# Install the necessary packages (runs the mentioned commands for installing the packages)
RUN apt-get update && apt-get install -y python3 python3-pip

# Set environment variables
#ENV NAME World

FROM gcr.io/distroless/python3 

COPY --from=build /app /app
WORKDIR /app
# Run a com mand to start the application (docker run image uses commands from CMD to run the application)
CMD ["happynumber.py"]
