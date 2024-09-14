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
  
  ![Alt text](https://viewer.diagrams.net/?tags=%7B%7D&lightbox=1&highlight=0000ff&edit=_blank&layers=1&nav=1&title=DevSecOps-HLD.drawio#R%3Cmxfile%3E%3Cdiagram%20name%3D%22Page-1%22%20id%3D%22bFxCE_58FyMwWJkOTZPC%22%3E5Vrbkps4EP2aeRwKEGD70WNPLlXJbnadqiRPWxqQjTKAWCF8yddvC4QtIcaeJGY32eQhRo2Q0Tndp7vluUGLfP%2BS4zJ9yxKS3fhusr9Byxvf9zwvgA9pOSgL2FrLhtOktbknw4p%2BIWpiZ61pQipla02CsUzQ0jTGrChILAwb5pztzGlrliWGocQbYryGNKxinBFr2geaiLS1Tv3Jyf6K0E3afbMXzdo7Oe4mq4WrFCdsp5nQ%2FQ1acMZEe5XvFyST6Jm4vHji7vHFOCnEcx5Y%2FZ5MirSYf96gxdsvj%2BzVx79%2Fu%2FWn7TJbnNVqx%2BptxaGDgCSAiBoWrICPu7jmWyLX9WDAWV0kzciFEeMiZRtW4OwNY6Wa8pkIcVDk4lowMKUiz9TdNSuEuukBLHeVwLwzTGFMikQb2ftWUFSs5jE5s9nOfzDfEHFmXtTOk%2FvWvkCh%2BpKwnAh%2BgAmcZFjQrekpWDnc5jjvxAlcKFq%2BgiLPYmgeC8YtmsC%2FSnlZ51k7Ad1tCRcUfPkNfiDZO1ZRQVkBUx6YECzXJswzupE3hGRMp4bVIqMFWRyjyz3HgFyO7M9ipu7eRsrPlC74Kmp2pxhDKm5SLbwidySQ%2FcthUO1onuHG%2FXUHvRIgnSwqPI6BqQHidavqiPidEl0dkugyJAmu0lPgD7mK5kpY%2BVgMIBHpnVnPK483vtFtuwDI9xuZjJwdeaCQFipnQ0VaP8AMsCcUvmXBMhkfsAW0fLG8X97bBJ71kuezipwoNIgNbEefIWdiE%2Bu5vhOMJSm2uy8gdf%2Fx5klRIXt4rbsclJNKwBEMElY%2FNNMkubuUCrIqcaO%2FO4D%2FAvejAu5q%2FyID%2FWN21sPKHRCaYDShCS3o33O6Pfz8yLuOAbxr%2Bn3ncv8Z8OiynF2CsipbYVvTvVS9a8i%2BH6KLun%2BsIE3dHwuowMJl9AKQ7Kn4qF1%2Fkks5oRot92rlZnBQg3%2BraFT8XCwa1bwfpGi0VcZidTBfGxn9G%2FOwJTka0%2F0cjXcVckgsCVzTLNMS84twGqJgIGkrD7xC8CHPDD6ErNibBHbozcKRSHtGL1Y9EhGnih9LkEpGJeT3W8CkOiHetp0WvTotgrNH0kP42vWZ5Rc9xl3Xm06XA06SVzEmTvNUyWlFnBiKlb%2FgaXIFJ%2FAmZieCJpYTdDWb7gThWPI7s%2BsDwjleM55b3iDa4uBcuu9TkdMkkY8P1g2mkOsKi0CNfailkNf0O9dpeaLIMYuEqY19NJD70FjYd4dOGvj3BdRdBKCEzdYQPFVz1pSA57kaLy5kNN99ScUr6DOez9LnuhJ0fbgeTeGVuvNJr3iLgmcFxXjE2NVbB7Y7j6X8SF54XRS02MDVar56Dx911Q675saFEho2wfjjOgNNfIKoQTG0KdPVS03SKP6xCPVMjQOmLD49b4DQwB%2BL0IlF6J910QuqMsPShItE%2Fl%2BWmdwRXosmGisCNSgV0hSnJH505MMpkQ%2BUnG1pJXMSeMeHVVN0tXVe9Stx3rVSXRCHAy1YF1jGyQMa69zBDy5XOP%2Bb0%2BZub9frCNSj72SVd%2BI5mjmB3nfPDNaPDWW3YNvIqDV6fB5f6jsoto%2BW7CL2m0vSXsUYBLOwmTx6qTrYLPXr1C0hOHdoxa4TwIF5dnXrhQNZOHSmA8XpaAFsHwq%2FzuUvaLI6yojU6TVnUruXLH5sdDoH8YSPjSyQRArRu0mbK1qpVCyfabJxW0TJ6ObN7NViLv0mbpJAl8qbwzLnF5LxWc8Luu5TV3E0oOKj1WLILpJtES%2BSufzxVYZQhquKxibET6N2WZGNbAC48oM8Orp1HdfvDO350SToxqcTpGZ00EfvCKcAjIzy87%2FlXBR8RdTFk6LpM%2FOCxnA40AV1tu9MH547cZB%2Bcmv%2BEOWFrtMrAlsgrAxirzydOW7kRpOp502jMJhMjZUnfn%2FhkVMTsn9JfZ9SnhgtgbtmcV01bR6zdKfTKKVJrzG8iPtAoFyVCrium3dISJmxQ07UJn7yTtBDZutwG9k9uhcN6E8YfbX%2BwPD05xAt66e%2FKkH3%2FwA%3D%3C%2Fdiagram%3E%3C%2Fmxfile%3E)