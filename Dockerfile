# An image with Keras and Hyperas build on top of Tensorflow.

FROM tensorflow/tensorflow:latest-gpu
MAINTAINER centroida [https://centroida.ai] <info@centroida.ai>

# Install Keras and Hyperas
RUN apt-get update -y \
	&& apt-get install vim -y \
	&& pip install keras \
	&& pip install hyperas \
	&& pip install networkx==1.11

# TensorBoard
EXPOSE 6006

# Jupyter
EXPOSE 8888