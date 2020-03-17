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
[centos@ip-172-31-39-136 ~]$ ^C
[centos@ip-172-31-39-136 ~]$ cat producer.py
#!/usr/bin/python

from time import sleep
from json import dumps
from kafka import KafkaProducer
import random
import datetime


producer = KafkaProducer(bootstrap_servers=['ec2-34-244-188-142.eu-west-1.compute.amazonaws.com:8082'],
                         value_serializer=lambda x:
                         dumps(x).encode('utf-8'))
while(True):
    currentDT = datetime.datetime.now()
    data = {'Name':'Amir Kourdi', 'id':str(random.randint(1000, 9000)), 'Group':'Test', 'Timestamp': str(currentDT)}
    producer.send('marlasinger', value=data)
    sleep(3)
