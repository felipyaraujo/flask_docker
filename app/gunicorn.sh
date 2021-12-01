#!/bin/sh
gunicorn --bind 0.0.0.0:8081 server_ws:app