# Cost & Security Trade-offs — Highly Available Secure Web Application

This document outlines key cost and security trade-offs considered when designing the AWS architecture.

---

## Cost Considerations

### 1. Multi-AZ RDS Deployment
- **Benefit:** High availability and failover support  
- **Trade-off:** Increased cost due to standby instance  

### 2. NAT Gateway
- **Benefit:** Allows private instances to access the internet securely  
- **Trade-off:** NAT Gateways incur hourly and data processing charges  

### 3. Auto Scaling Group
- **Benefit:** Scales based on demand, optimizing performance  
- **Trade-off:** More EC2 instances = higher cost during peak usage  

### 4. Application Load Balancer (ALB)
- **Benefit:** Efficient traffic distribution and health checks  
- **Trade-off:** Adds cost based on usage and active connections  

---

## Security Considerations

### 1. Private Subnets for EC2 and RDS
- **Benefit:** No direct public access reduces attack surface  
- **Trade-off:** Requires NAT Gateway for outbound access  

### 2. AWS WAF
- **Benefit:** Protection against common web attacks (SQLi, XSS)  
- **Trade-off:** Additional cost per rule and request  

### 3. Encryption (TLS + RDS)
- **Benefit:** Protects data in transit and at rest  
- **Trade-off:** Slight performance overhead  

### 4. Secrets Manager
- **Benefit:** Secure storage of credentials  
- **Trade-off:** Additional cost compared to hardcoding (but far more secure)  

---

## Summary

This architecture prioritizes security and high availability while balancing cost through scalable services. Trade-offs were made to ensure strong protection, fault tolerance, and performance, aligned with AWS best practices.