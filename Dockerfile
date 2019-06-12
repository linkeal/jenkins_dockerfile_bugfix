# You have to define a default BASE_IMAGE - otherwise Jenkins will fail
ARG BASE_IMAGE=ubuntu
FROM ${BASE_IMAGE}
RUN echo hello
