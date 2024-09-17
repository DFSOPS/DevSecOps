# DevSecOps
Shift Left CI/CD Pipeline for Web Application on AWS EC2
========================================================

Welcome to the repository of my Shift Left CI/CD pipeline project. This project showcases a sophisticated, security-focused CI/CD pipeline for deploying a web application on AWS EC2, with a strong emphasis on early vulnerability detection through automated security scans. This pipeline is tailored to demonstrate my capabilities in DevSecOps to potential interviewers.

Project Overview
----------------

This CI/CD pipeline leverages GitHub Actions to automate the entire process of building, testing, and deploying a web application, while integrating security practices from the start. Below are the key components and tools utilized:

*   **AWS EC2**: A scalable and reliable platform for hosting the web application.
    
*   **GitHub Actions**: Automates the CI/CD workflow, ensuring efficient integration and delivery.
    
*   **Terraform**: Manages infrastructure as code, facilitating consistent and repeatable deployments.
    
*   **CodeQL**: Conducts Static Application Security Testing (SAST) to identify vulnerabilities in the codebase.
    
*   **Trivy**: Performs both Software Composition Analysis (SCA) and Infrastructure as Code (IaC) scanning to ensure a secure application environment.
    

Key Features
------------

### **1\. Security-First Approach**

*   **Shift Left Strategy**: By incorporating security scanning early in the CI/CD pipeline, potential vulnerabilities are identified and addressed before reaching production.
    
*   **Comprehensive Scanning**: The pipeline includes multiple layers of security scanning, ensuring a holistic approach to software security.
    

### **2\. Automated Security Scans**

*   **Static Application Security Testing (SAST) with CodeQL**:
    
    *   **Purpose**: Identifies code-level vulnerabilities such as SQL injection, XSS, and more.
        
    *   **Integration**: Seamlessly integrated into the pipeline to automatically trigger upon code changes.
        
*   **Software Composition Analysis (SCA) with Trivy**:
    
    *   **Purpose**: Scans open-source dependencies for known vulnerabilities, ensuring that third-party libraries do not introduce security risks.
        
    *   **Implementation**: Conducted as part of the build process to validate the security of dependencies.
        
*   **Infrastructure as Code (IaC) Scanning with Trivy**:
    
    *   **Purpose**: Detects misconfigurations in Terraform scripts, helping maintain a secure and compliant infrastructure.
        
    *   **Execution**: Runs automatically to ensure infrastructure code is reviewed for security flaws before deployment.
        

### **3\. Infrastructure as Code with Terraform**

*   **Consistency and Reproducibility**: Terraform scripts define and manage AWS resources, ensuring environments are consistent and can be easily replicated.
    
*   **Version Control and Auditing**: Changes to infrastructure are tracked and versioned in the GitHub repository, providing clarity and traceability.
    

### **4\. Enhanced CI/CD Automation with GitHub Actions**

*   **Continuous Integration**: Automatically tests and integrates code changes, maintaining code quality.
    
*   **Continuous Delivery**: Facilitates the seamless deployment of applications to AWS EC2, optimizing release cycles and minimizing manual interventions.    


Conclusion
----------

This project exemplifies a modern, security-focused approach to CI/CD, aligning with the principles of DevSecOps. By integrating robust security scans and automating the deployment process, this pipeline ensures a secure and efficient path from development to production.Feel free to explore the repository and reach out if you have any questions or would like further information!

### High Level Diagram  

```mermaid
graph TD
    %% Define Components
    GitHubActions[GitHub Actions] --> CodeQL[CodeQL (SAST)]
    GitHubActions --> Trivy[Trivy (SCA & IaC)]
    GitHubActions --> Terraform[Terraform]
    Terraform --> EC2[AWS EC2]
    CodeQL -- Scans Code --> GitHubActions
    Trivy -- Scans Dependencies & IaC --> GitHubActions
    EC2 -- Hosts Web App --> GitHubActions

    %% Key Features
    subgraph Security-First Approach
        ShiftLeft[Shift Left Strategy]
        ComprehensiveScanning[Comprehensive Scanning]
        ShiftLeft --> CodeQL
        ShiftLeft --> Trivy
    end

    subgraph Automated Security Scans
        SAST[Static Application Security Testing]
        SCA[Software Composition Analysis]
        IaC[Infrastructure as Code Scanning]
        CodeQL --> SAST
        Trivy --> SCA
        Trivy --> IaC
    end

    subgraph Infrastructure as Code
        Consistency[Consistency and Reproducibility]
        VersionControl[Version Control and Auditing]
        Terraform --> Consistency
        Terraform --> VersionControl
    end

    subgraph Enhanced CI/CD Automation
        CI[Continuous Integration]
        CD[Continuous Delivery]
        GitHubActions --> CI
        GitHubActions --> CD
    end

    %% Relationships
    GitHubActions -- Automates Workflow --> CodeQL
    GitHubActions -- Automates Workflow --> Trivy
    GitHubActions -- Manages Infrastructure --> Terraform
    Terraform -- Defines Resources --> EC2
    CI --> GitHubActions
    CD --> GitHubActions

