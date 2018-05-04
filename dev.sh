#!/usr/bin/env bash
set -uxe

IMAGE=jessevogt/web:latest

while [[ $# -gt 0 ]]; do
    case $1 in
        serve)
        docker build -t $IMAGE .
        docker run --rm \
            -v $(pwd):/src \
            -p 4000:4000 \
            $IMAGE \
            bundle exec jekyll serve -H 0.0.0.0
        exit 0
    esac
done
