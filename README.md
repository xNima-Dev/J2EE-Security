# 🛡️ J2EE Security Example

![Java](https://img.shields.io/badge/Java-22-orange.svg)
![Jakarta EE](https://img.shields.io/badge/Jakarta%20EE-10-blue.svg)
![Maven](https://img.shields.io/badge/Maven-Build-success.svg)
![GlassFish](https://img.shields.io/badge/Apache%20Tomcat-7+-yellow.svg)

A clean, highly educational **Java Enterprise Edition (J2EE)** web application designed to demonstrate the core concepts of **Authentication** and **Role-Based Authorization** from scratch, utilizing Servlet Filters and HTTP Sessions without relying on heavy external frameworks.

## ✨ Key Features

- **🔒 Robust Authentication:** Secures private routes by ensuring that only authenticated users with a valid session can access protected resources. Implemented cleanly using an `AuthenticationFilter`.
- **🔑 Role-Based Authorization:** Restricts resource access depending on user privileges (e.g., `ADMIN` vs `USER`). Only administrators can access `/admin/*` routes via the `AdminAuthorizationFilter`.
- **🛠️ Session Management:** Leverages built-in `HttpSession` mechanisms to securely maintain user state and roles across multiple requests.
- **🚪 Minimalist Login System:** A streamlined, Servlet-based authentication system showcasing secure session initialization and role assignment.

## 💻 Tech Stack

- **Language:** Java (JDK 22)
- **Framework:** Jakarta EE 10 (Servlets, Filters, JSP)
- **Build Tool:** Maven
- **Server:** GlassFish 7+ (Recommended for Jakarta EE 10 compatibility)

## 📂 Project Structure

```text
├── src/main/java/lk/jiat/
│   ├── filter/
│   │   ├── AuthenticationFilter.java     # Validates active user sessions
│   │   └── AdminAuthorizationFilter.java # Checks for 'ADMIN' role privileges
│   └── servlet/
│       └── LoginServlet.java             # Handles authentication & session setup
└── src/main/webapp/                      # Frontend views (JSPs) & web.xml
```

## 🚀 Getting Started

Follow these instructions to get a copy of the project up and running on your local machine for development and testing.

### Prerequisites

- **Java Development Kit (JDK) 22** or higher.
- **Apache Maven** installed.
- **Apache Tomcat 10** or higher (required for Jakarta namespace).
- An IDE of your choice (IntelliJ IDEA, Eclipse, VS Code).

### Installation & Deployment

1. **Clone the repository:**
   ```bash
   git clone https://github.com/xNima-Dev/J2EE-Security.git
   cd J2EE-Security
   ```

2. **Build the project using Maven:**
   ```bash
   mvn clean install
   ```

3. **Deploy to Tomcat:**
   - Copy the generated `.war` file from the `target/` directory to your Tomcat `webapps/` directory, OR
   - Configure your IDE to deploy the exploded WAR directly to a local Tomcat server.

4. **Access the application:**
   Navigate to `http://localhost:8080/J2EE-Security_war_exploded/` (Note: Ensure the context path matches your deployment configuration).

## 🧪 Testing the Application

For demonstration purposes, the application includes a mocked authentication mechanism with hardcoded credentials in the `LoginServlet`.

| Role | Username | Password | Redirect Target |
| :--- | :--- | :--- | :--- |
| **USER** | `user` | `1234` | User Dashboard (`/home.jsp`) |
| **ADMIN** | `admin` | `1234` | Admin Dashboard (`/admin/home.jsp`) |

## 🎓 Learning Objectives

This project is meticulously crafted for educational purposes. By exploring this codebase, developers will deeply understand the underlying mechanics of web security—specifically how HTTP requests can be intercepted and validated using Filters—providing a strong foundation before transitioning to comprehensive security frameworks like Spring Security.
