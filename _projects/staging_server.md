---
layout: page
title: Staging Server
description: An on-demand deployment platform for reviewing and testing multiple branches of IRIS across different development environments.
img: assets/img/projects/staging_server/staging-server.jpg
importance: 1
category: </>
github: https://github.com/IRIS-NITK/Staging-Server
---

→ [source code](https://github.com/IRIS-NITK/Staging-Server)



## A First Real Project

This was the first time I built something that other people actually used regularly. Not just me testing it locally, but 10+ developers depending on it, requesting features, filing bugs. That changes how you code. You think about edge cases differently when you know someone's weekend got ruined because your deployment script crashed. You write better error messages. You add logging that actually matters.

It taught me that shipping software for others is completely different from building side projects. But it also felt amazing to see people use something you built to actually do their work faster.

## The Problem

We had 10+ developers working on IRIS simultaneously, each pushing to different branches. The challenge: how do you let multiple reviewers and stakeholders test features from any branch without having to manually set up environments or run code locally? How do you give someone a live, internet-accessible instance of a specific branch to play with?

We needed a way to say "spin up a deployment for this branch" and have reviewers access it on the internet within minutes. No manual setup, no local environment headaches.

## What We Built

Staging Server is a Django-based platform that automatically creates on-demand deployments. When a developer pushes a branch, we can spin up a complete instance of that branch with its own database, accessible via a public URL. Each branch gets its own isolated environment running in Docker containers.

It's essentially a self-service deployment system where developers can request environments for any branch, and the platform handles all the Docker orchestration, database setup, and internet exposure.

## How It Works

The system:
- Creates a **Docker container** for each branch with its own development server
- Sets up an **isolated database** per branch so data doesn't leak between deployments
- Uses **Nginx** as a reverse proxy to route traffic to the right container
- Exposes each deployment with a **public URL** so anyone can access it
- Uses **Portainer** for monitoring, logs, and role-based access control
- Provides **per-instance SSH access** through Daphne for debugging and direct container access
- Streams **live logs** from containers directly into the web interface so you can watch deployment happen in real-time
- Uses **Redis** and **Celery** to manage deployment flows and background tasks without blocking the main app

<img src="/assets/img/projects/staging_server/staging_usercase.png" alt="staging server use case" style="max-width: 100%; margin: 20px 0; height: auto;">

Developers can see metrics, logs, and console output for their deployments. The product team and reviewers can test features on any branch without waiting. It's a completely automated workflow.

## Tech Stack

- **Backend**: Django, Daphne (ASGI server)
- **Containerization**: Docker, Docker Compose
- **Reverse Proxy**: Nginx
- **Database**: MySQL (per deployment)
- **Job Queue**: Celery with Redis for async task management
- **Real-time**: WebSockets for live log streaming
- **Monitoring**: Portainer for visibility and access control
- **Infrastructure**: Linux servers with automated deployment flows
- **Reverse Proxy**: Nginx
- **Database Management**: MySQL per deployment
- **Monitoring**: Portainer
- **Infrastructure**: Linux servers
- **Networking**: Automatic URL generation and routing

