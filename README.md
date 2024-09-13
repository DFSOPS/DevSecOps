# DevSecOps
Shift-Left CI/CD Pipeline for Secure Web Application
----------------------------------------------------

### Project Overview

This project demonstrates a comprehensive **Shift-Left CI/CD pipeline** designed to enhance the security posture of a web application running on **Amazon EC2**. Leveraging **GitHub Actions**, this pipeline integrates multiple layers of security scanning and analysis to proactively identify and mitigate vulnerabilities early in the development lifecycle. **Amazon S3** is used for secure storage of artifacts and configuration files.

### Technologies Used

-   **Amazon EC2**: Hosting the web application for deployment.
-   **Amazon S3**: Storing artifacts and configuration files securely.
-   **GitHub Actions**: Orchestrating the CI/CD pipeline and automating security scans.
-   **CodeQL**: Performing **Static Application Security Testing (SAST)** to analyze the codebase for vulnerabilities and coding flaws.
-   **Trivy**: Conducting **Software Composition Analysis (SCA)** and **Infrastructure as Code (IaC) scanning** to identify vulnerabilities in container images and infrastructure configurations.
-   **Docker**: Containerizing the application for consistency and security in different environments.
-   **Terraform**: Provisioning and managing infrastructure resources for reproducibility and scalability.

### Key Features

-   **Code Quality and Security**: The pipeline incorporates CodeQL for static code analysis, ensuring that security vulnerabilities and code quality issues are detected early.
-   **Comprehensive Vulnerability Scanning**: Trivy is employed to scan both container images and Infrastructure as Code (IaC) configurations, covering critical aspects of the application's security posture.
-   **Automated CI/CD Workflow**: Leveraging GitHub Actions, the pipeline automates the entire workflow from code commits to deployment, integrating security scans seamlessly into the CI/CD process.
-   **Secure Artifact Storage**: Amazon S3 is used to securely store build artifacts, configuration files, and other critical data, ensuring that all components are protected.
-   **Scalable and Reproducible Infrastructure**: Infrastructure is managed using Terraform, providing a scalable and reproducible setup that supports consistent deployments and easy maintenance.

### Issues Addressed

-   **Early Detection of Vulnerabilities**: By integrating security scans into the CI/CD pipeline, this project addresses the need for early vulnerability detection, reducing the risk of security issues being discovered in production.
-   **Code Quality Assurance**: The use of CodeQL ensures that potential code vulnerabilities and quality issues are identified before deployment, improving overall code security and reliability.
-   **Security in Containerized Environments**: Trivy's container scanning capabilities help to secure container images by identifying known vulnerabilities, thereby enhancing the security of the deployed application.
-   **Infrastructure Security**: The IaC scanning with Trivy ensures that infrastructure configurations adhere to security best practices, reducing the risk of misconfigurations and security gaps.
-   **Secure Storage**: Utilizing Amazon S3 for artifact storage ensures that critical data is securely managed and accessible only to authorized entities, protecting against unauthorized access and data breaches.

This project is an excellent example of implementing a shift-left security strategy within a CI/CD pipeline, demonstrating a proactive approach to securing applications throughout the development lifecycle while ensuring secure storage and management of artifacts.
