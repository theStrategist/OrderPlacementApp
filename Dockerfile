FROM alpine:3.5
RUN apk add --update python py-pip
COPY requirements.txt /src/requirements.txt
RUN pip install -r /src/requirements.txt

COPY main.py /src
COPY dbconnect.py /src
COPY static /src/static
COPY templates /src/templates

CMD python /src/main.py