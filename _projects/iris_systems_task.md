---
layout: page
title: IRIS Systems - Docker & Infrastructure
img: assets/img/projects/staging_server/docker.webp
importance: 2
category: </>
github: https://github.com/vinayakj02/IRIS-Systems-Task
---

[source code](https://github.com/vinayakj02/IRIS-Systems-Task)

## About IRIS

[IRIS](https://iris.nitk.ac.in) is the research and innovation platform at NITK, a comprehensive system that manages research projects, innovations, and institutional collaborations. It's a critical system running at scale that supports hundreds of users across the institution.

## How It All Started

When I joined the IRIS systems team, I was given a progressive task that walked me through building production-grade infrastructure from scratch. Starting with a simple Rails application, I had to think through each architectural decision: containerization, scaling, and data protection.

This was also my first real encounter with **Linux**. Everything in the task required working directly with the command line and understanding OS-level concepts. I ended up dual booting my laptop with Windows and Linux so I could learn and practice without losing my primary development environment. That decision turned out to be one of the best ones because it forced me to get comfortable with Linux quickly.

## The Learning Path

**Stage 1-2**: I learned **Docker** and **Docker Compose** by actually dockerizing the app. The breakthrough moment was understanding how **Docker networks** let services talk to each other privately, without exposing everything to the world.

**Stage 3-4**: **Nginx** came next. **Reverse proxies** and **load balancing** suddenly made sense when I had to distribute traffic across 3 instances. This opened my eyes to how systems scale beyond a single machine.

**Stage 5-6**: **Docker volumes** taught me that containers are temporary, but data needs to stick around. Managing **persistence** properly became clearer.

**Stage 7**: **Rate limiting** showed me the defensive side of infrastructure: protecting your services from being hammered.

**Stage 8**: Automated **backups** with **cron jobs** brought it full circle. Infrastructure is about keeping systems running smoothly and protecting what matters.

## What I Built

- **Multi-container architecture** using **Docker Compose** with proper **service isolation**
- **Nginx reverse proxy** distributing traffic across 3 application instances  
- **MySQL database** with **automatic daily backups** and **retention policies**
- **Rate limiting** to protect the **API** from abuse
- A **production-ready system** that evolved through 8 thoughtful stages

## What Stuck With Me

Beyond the technical skills, this task fundamentally changed how I approach problems. I learned to think about systems holistically, not just asking "does it work," but also "does it scale, is it secure, and can we recover if something breaks?" Working on **IRIS infrastructure** taught me that systems engineering is about reliability and thoughtfulness.

## Tech Stack
**Containerization**: Docker, Docker Compose  
**Web Server**: Nginx (reverse proxy, load balancing)  
**Database**: MySQL (with automated backups)  
**Application**: Ruby on Rails  
**Automation**: Bash, Cron jobs  
**OS**: Linux
