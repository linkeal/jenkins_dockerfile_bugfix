# You have to define a default BASE_IMAGE - otherwise Jenkins will fail
ARG BASE_IMAGE=ubuntu:16.04
FROM ${BASE_IMAGE}
RUN echo hello
