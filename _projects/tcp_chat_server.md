---
layout: page
title: TCP Chat server using Sockets
description: A chat server implemented using TCP Sockets in Python.
img: assets/img/projects/tcp_chat/tcp-4.png
importance: 4
category: previous
---

[Source code](https://github.com/vinayakj02/TCP-Chat-Server-using-Sockets)

<hr>
## Architecture
- Client Server architecture based on Transmission Control Protocol (TCP).
- Multiple clients connect to one central server which acts as host. 
TCP is a connection-oriented protocol that is a dependable connection protocol.
The chat application will be hosted on one server, with several clients
connecting to it and communicating with one another.

## Feautures 
* Clients (users) can join and leave the server (chat room).
* Clients can only join the server if the server authorizes it.
* Clients can send private messages to other clients (users) in the server (chat room).


## Commands

| Command | Use |
|---------------------------|:---------------------------|
| `/private <person_name> <text>` | only the client with person_name will be able to view the message |
|  `/leave` |  will let the client (user) exit from the server |
|  `/color <color> <text>` |   makes the text appear in that color |
| `**text**` |   will make <b>text</b> bold |
|  `__text__` | will make the <i>text</i> italicised |   
<br>

## Images 

<a href="url"><img src="https://user-images.githubusercontent.com/74676945/177054838-a3d2b050-86d3-4a43-80b5-9c31f55cda6f.png" align="left" height="200" width="900" ></a>

<a href="url"><img src="https://user-images.githubusercontent.com/74676945/177054914-85cb2b47-1fdb-42ec-8bbd-e40113b9fb8e.png" align="left" height="318" width="900" ></a>

<a href="url"><img src="https://user-images.githubusercontent.com/74676945/177054984-8d0504da-618a-4a36-94ca-ae2b39b07c41.png" align="left" height="318" width="900" ></a>


## To run
* Run ``server.py`` to start the chat room.
* Run ``client.py`` to start each client.
