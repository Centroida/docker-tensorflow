# An image with Keras and Hyperas build on top of Tensorflow.

FROM tensorflow/tensorflow:nightly-gpu

LABEL maintainer="Centroida [https://centroida.ai] <info@centroida.ai>"

# Install Keras and Hyperas
RUN apt-get update -y \
	&& apt-get install vim -y \
	&& pip install hyperas \
	&& pip install networkx==1.11 \
	&& apt-get install libhdf5-serial-dev -y

# TensorBoard
EXPOSE 6006

# Jupyter
EXPOSE 8888