#!/usr/bin/python

import os
import RPi.GPIO as GPIO

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BCM)
mutePin = 14
GPIO.setup(mutePin, GPIO.OUT)

event = os.environ['PLAYER_EVENT']


if (event == 'playing'):
    GPIO.output(mutePin, True)
elif (event == 'paused' or event == 'stopped'):
    GPIO.output(mutePin, False)
