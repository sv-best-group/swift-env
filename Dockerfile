FROM ubuntu:15.10

WORKDIR /swift3-tmp/

#install swift
RUN apt-get update \
    && apt-get install -y wget \
    && wget https://swift.org/builds/swift-3.0-preview-2/ubuntu1510/swift-3.0-PREVIEW-2/swift-3.0-PREVIEW-2-ubuntu15.10.tar.gz \
    && tar -zxf swift-3.0-PREVIEW-2-ubuntu15.10.tar.gz \
    && mv swift-3.0-PREVIEW-2-ubuntu15.10 /swift \
    && rm -rf $WORKDIR/swift-3.0-PREVIEW-2-ubuntu15.10.tar.gz

RUN apt-get install -y clang git libicu-dev libxml2

ENV PATH "/swift/usr/bin:$PATH"
