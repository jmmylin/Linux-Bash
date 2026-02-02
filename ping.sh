#!/bin/bash

read -p "Which device should be pinged" address

ping -c3 ${address}
