# J2EE Security Example

A simple Java Enterprise Edition (J2EE) web application demonstrating how to implement **Authentication** and **Role-Based Authorization** using Servlet Filters and HTTP Sessions.

## Features

- **Authentication:** Restricts access to secured pages unless the user is logged in. Implemented using `AuthenticationFilter`.
- **Role-Based Authorization:** Grants access to specific resources based on the user's role (e.g., `ADMIN` or `USER`). Implemented using `AdminAuthorizationFilter`.
- **Session Management:** Utilizes `HttpSession` to keep track of logged-in users and their roles.
- **Login System:** Simple Servlet-based login mechanism demonstrating session creation and role assignment.

## Tech Stack

- Java (JDK 22)
- Jakarta EE 10 (Servlets, Filters, JSP)
- Maven

## Project Structure

- `lk.jiat.web.filter.AuthenticationFilter`: Validates if a user session exists before accessing secured routes.
- `lk.jiat.web.filter.AdminAuthorizationFilter`: Checks if the authenticated user has the `ADMIN` role before allowing access to `/admin/*` routes.
- `lk.jiat.web.servlet.LoginServlet`: Authenticates users and sets up the session and roles.
- `src/main/webapp/`: Contains JSP files (Login, Home, Admin Home) and `web.xml`.

## Setup & Run

1. Clone the repository.
2. Open the project in your favorite IDE (IntelliJ IDEA, Eclipse, etc.).
3. Configure a local web server such as **Apache Tomcat (version 10+)** because this project uses Jakarta EE 10.
4. Build the project using Maven:
   ```bash
   mvn clean install
   ```
5. Deploy the generated `.war` file to your Tomcat server.
6. Access the application at `http://localhost:8080/J2EE-Security_war_exploded/` (or the equivalent context path configured).

## Default Credentials

For testing purposes, the `LoginServlet` has hardcoded credentials:
- **User Role:** Username: `user` | Password: `1234` (Redirects to User Home)
- **Admin Role:** Username: `admin` | Password: `1234` (Redirects to Admin Home)

## Learning Purpose

This project is intended for educational purposes to understand the core concepts of J2EE security using Filters and Servlets, without relying on external frameworks like Spring Security.
