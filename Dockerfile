# Use an official Python runtime as a parent image
FROM python:3.11-slim-buster as base

FROM base as jupyter_base

WORKDIR /app

RUN pip install jupyter 
# Set the working directory to /app

FROM jupyter_base as bonds_base

# Copy the requirements file into the container at /app
COPY requirements.txt /app


# Install the dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

RUN apt-get update && apt-get install -y libxml2-dev libxslt-dev

# Copy the current directory contents into the container at /app
COPY . /app

EXPOSE 8888
# Set the command to run Jupyter Notebook when the container starts
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--no-browser", "--allow-root"]
