# An image with Keras and Hyperas build on top of Tensorflow.

FROM tensorflow/tensorflow:latest-gpu-py3

LABEL maintainer="Centroida [https://centroida.ai] <info@centroida.ai>"

# Install Keras and Hyperas
RUN apt-get update -y \
	&& apt-get install vim -y \
	&& pip3 install hyperas \
	&& pip3 install networkx==1.11 \
	&& apt-get install libhdf5-serial-dev -y \
	&& pip3 install pandas \
	&& pip3 install nltk \
	&& pip3 install gensim \ 
	&& pip3 install -U ggplot 

# TensorBoard
EXPOSE 6006

# Jupyter
EXPOSE 8888
