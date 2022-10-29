#!/bin/bash
nmcli connection modify Auto\ K-Unit ipv4.dns "9.9.9.9"
nmcli connection modify Auto\ K-Unit ipv6.dns "2620:fe::9"
