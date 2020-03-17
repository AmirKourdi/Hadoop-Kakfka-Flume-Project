#!/usr/bin/python

from kafka import KafkaConsumer
from json import loads
import datetime

consumer = KafkaConsumer(
    'marlasinger',
     bootstrap_servers=['ec2-34-244-188-142.eu-west-1.compute.amazonaws.com:8082'],
     auto_offset_reset='earliest',
     enable_auto_commit=True,
     group_id='mygroup',
     value_deserializer=lambda x: loads(x.decode('utf-8')))

for message in consumer:
    message = message.value

    print('{}'.format(message))
