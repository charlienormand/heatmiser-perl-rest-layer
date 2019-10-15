#!/bin/bash
/usr/bin/docker exec -it heatmiser /heatmiser-wifi/bin/heatmiser_json.pl -h 192.168.1.x -p 1234 '{"enabled":1,"runmode":"heating","holiday":{"enabled":0},"heating"
:{"target":16}}'
