# 🔐 STRIDE Threat Model — Highly Available Secure Web Application

This document outlines potential threats using the STRIDE model and how the AWS architecture mitigates them.

---

## 🧍 Spoofing

**Threat:**  
Attackers impersonate legitimate users or services.

**Mitigation:**  
- AWS WAF filters malicious and spoofed requests  
- HTTPS (TLS termination at ALB) ensures secure communication  
- IAM roles enforce trusted service interactions  

---

## ✏️ Tampering

**Threat:**  
Data is modified in transit or at rest.

**Mitigation:**  
- TLS encryption protects data in transit  
- RDS encryption enabled for data at rest  
- Security Groups restrict unauthorized access  
- Secrets Manager secures database credentials  

---

## 🧾 Repudiation

**Threat:**  
Users deny performing actions.

**Mitigation:**  
- CloudWatch logs and metrics track system activity  
- (Future improvement) CloudTrail for API auditing  

---

## 🔓 Information Disclosure

**Threat:**  
Sensitive data is exposed.

**Mitigation:**  
- RDS deployed in private subnets (no public access)  
- No hardcoded credentials (Secrets Manager used)  
- Least privilege IAM roles  
- Restricted network access via Security Groups  

---

## 🚫 Denial of Service (DoS)

**Threat:**  
System is overwhelmed by excessive traffic.

**Mitigation:**  
- AWS WAF blocks malicious traffic  
- Auto Scaling Group handles traffic spikes  
- ALB distributes load across instances  

---

## ⬆️ Elevation of Privilege

**Threat:**  
Attackers gain higher permissions.

**Mitigation:**  
- IAM roles follow least privilege principle  
- EC2 instances have limited permissions  
- No direct access to RDS from public networks  

---

## ✅ Summary

This architecture applies security best practices including network isolation, encryption, identity management, and monitoring, aligning with AWS Well-Architected Framework principles.