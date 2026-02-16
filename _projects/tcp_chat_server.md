---
layout: page
title: TCP Chat Server using Sockets
description: A real-time chat application built with TCP sockets in Python, supporting multiple concurrent clients and advanced messaging features.
img: assets/img/projects/tcp_chat/tcp-4.png
importance: 4
category: </>
github: https://github.com/vinayakj02/TCP-Chat-Server-using-Sockets
---

[source code](https://github.com/vinayakj02/TCP-Chat-Server-using-Sockets)

## Overview

I wrote this chat server while learning networking for the first time. I wanted to understand how socket programming worked, so I built this TCP chat server in Python to learn.

The server accepts connections from multiple clients on the network and routes messages between them. Each client can send public messages to everyone or private messages to specific people, and all messages pass through the central server.

## What I Built

- **Server** that accepts multiple client connections and manages them concurrently
- **Client** applications that connect to the server and send/receive messages
- **Authentication system** so not everyone can just join
- **Private messaging** system for one-on-one communication
- **Text formatting** support (colors, bold, italics)
- **Protocol handling** to parse commands and route messages correctly

## Architecture

The application uses a **client-server architecture** based on the **TCP protocol**. Here's how it works:

- **Server**: Acts as a central hub, accepting incoming client connections on a specific port
- **Clients**: Connect to the server via their IP address and port
- **Communication**: All messages flow through the server, which routes them to the intended recipients
- **Connection**: TCP is connection-oriented, meaning the connection stays open as long as needed and guarantees message delivery in order

Each client runs in its own thread on the server, allowing the server to handle multiple simultaneous connections without blocking.

## Features

- **Join/Leave**: Clients can connect to the server and disconnect when done
- **Authentication**: Server authorizes clients before allowing them into the chat
- **Public Chat**: Send messages that everyone in the room can see
- **Private Messages**: Send confidential messages to specific users using `/private`
- **Text Formatting**: Support for colors, bold, and italic text
- **Concurrent Connections**: Handle multiple clients connecting at the same time

## Commands

| Command | Purpose |
|---------|---------|
| `/private <username> <message>` | Send a private message only visible to that user |
| `/leave` | Disconnect from the server |
| `/color <color> <text>` | Display text in a specific color |
| `**text**` | Make text bold |
| `__text__` | Make text italic |

## What I Learned

Building this project taught me how network communication actually works at a low level. I had to think about:

- **Socket programming**: How to open connections, send/receive data reliably
- **Threading**: Managing multiple clients simultaneously without one blocking another
- **Protocol design**: Creating a simple messaging protocol so clients and server understand each other
- **State management**: Keeping track of connected users, their messages, and handling disconnections gracefully
- **Edge cases**: What happens when a client suddenly disconnects? How do we prevent duplicate messages?

This was eye-opening because it moves beyond simple HTTP requests and into the fundamentals of how internet communication actually works.

## Demo

<img src="https://user-images.githubusercontent.com/74676945/177054838-a3d2b050-86d3-4a43-80b5-9c31f55cda6f.png" alt="chat demo" style="max-width: 100%; margin: 10px 0;">

<img src="https://user-images.githubusercontent.com/74676945/177054914-85cb2b47-1fdb-42ec-8bbd-e40113b9fb8e.png" alt="chat demo" style="max-width: 100%; margin: 10px 0;">

<img src="https://user-images.githubusercontent.com/74676945/177054984-8d0504da-618a-4a36-94ca-ae2b39b07c41.png" alt="chat demo" style="max-width: 100%; margin: 10px 0;">

## Getting Started

```bash
# Start the server first
python server.py

# In separate terminals, start client instances
python client.py
```

## Tech Stack
**Language**: Python  
**Networking**: TCP Sockets  
**Concurrency**: Threading  
**Protocol**: Custom message protocol
