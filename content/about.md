---
title: Introduction to 4C Software Platform
type: about
---

## 1. What is 4C Software?

**4C Software** is a proprietary, full-stack enterprise application development and runtime platform designed for building and running mission-critical business systems. It provides a complete ecosystem — including its own programming language, database engine, security framework, client interface, and deployment tools — all tightly integrated into a unified architecture.

Rather than being just a programming language or just a database, 4C is an entire application platform. Organizations use it to develop custom line-of-business systems such as inventory management, accounting, distribution control, logistics tracking, customer management, reporting, and transaction-heavy enterprise workflows.

It belongs to the class of platforms often compared to classic 4GL environments (like PowerBuilder or Progress OpenEdge), but with deeper control over runtime execution, file systems, and security.

## 2. Architectural Philosophy

At its core, 4C follows a **centralized client–server model**:

- The **server** executes all application logic.
- The **client** is primarily responsible for user interface rendering.
- Data integrity, transaction control, locking, and security are handled server-side.

This architecture ensures:

- Strong multi-user consistency
- Controlled record locking
- Centralized security enforcement
- Predictable performance under concurrent load

The client acts as a graphical terminal, while the server manages sessions, file access, transaction logs, and application execution.

## 3. Core Building Blocks

The platform is composed of several tightly integrated components:

### 1. PCL (Procedure Call Language)

A proprietary server-side programming language used to write business logic. It includes:

- File handling
- Embedded SQL
- Encryption and security primitives
- UI control
- Networking utilities
- System-level operations

### 2. JISAM File System

4C’s native indexed file system optimized for transactional, multi-user access. It supports both 32-bit and 64-bit formats and includes built-in recovery, repair, and backup tools.

### 3. CISAM Support

Integration with Informix C-ISAM for transactional file management in earlier or specialized configurations.

### 4. External Database Integration

Connectivity to:

- MySQL / MariaDB
- PostgreSQL
- SQLite
- ODBC-based systems (including Microsoft SQL Server)

This allows 4C applications to interact with modern relational databases while preserving native application logic.

### 5. Security Framework

Enterprise-grade features including:

- Role-based access control
- Record and field-level encryption
- RSA and symmetric encryption
- Secure client-server communication
- PAM authentication (Linux)
- Host key identity model

## 4. Platform Scope

4C is not just a development toolkit — it is an **application runtime environment**. It includes:

- Session management
- Logging and profiling tools
- Transaction monitoring
- Record lock inspection
- Source control
- Auto-update mechanisms
- PDF generation
- JSON handling
- REST communication support

Everything required to build, deploy, secure, and maintain enterprise software is contained within the platform.

## 5. Target Use Cases

4C is designed for:

- High-concurrency business applications
- Transaction-heavy systems
- Custom enterprise solutions
- Industry-specific vertical software
- Long-running operational systems with strict data consistency requirements

It is particularly well-suited for environments where reliability, control, and multi-user data integrity are more important than modern web-first architecture trends.

## 6. Why It Matters

Despite being a mature and long-standing platform, 4C continues to evolve, supporting modern operating systems (including Win64 and macOS clients) and updated cryptographic standards.

Its longevity suggests:

- A stable enterprise customer base
- Proven architecture for real-world operations
- Strong backward compatibility
- Ongoing maintenance and feature development

4C represents a traditional but powerful approach to enterprise application engineering — emphasizing stability, centralized control, and integrated system design over distributed or microservice-based complexity.

## Closing Perspective

This chapter provides a high-level orientation to the 4C ecosystem. In the chapters that follow, we will explore:

- The internal architecture in depth
- The PCL language structure and programming model
- JISAM file internals and transaction handling
- Security mechanisms and cryptographic operations
- External database connectivity
- Application monitoring and profiling
- Real-world development workflows

Understanding 4C requires viewing it not as a single tool, but as a complete enterprise software environment — one designed to build and run serious business systems at scale.
