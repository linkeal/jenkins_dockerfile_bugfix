ARG BASE_IMAGE=ubuntu # You have to define a default value - otherwise jenkins fails
FROM ${BASE_IMAGE}
RUN echo hello
