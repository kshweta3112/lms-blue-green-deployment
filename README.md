# LMS Blue-Green Deployment

## Objective

Implement a Blue-Green deployment strategy for the LMS application without interrupting students using the application.

## Architecture

Students
   |
   v
Nginx :80
   |
   +---- Blue LMS v1.0 :8081
   |
   +---- Green LMS v2.0 :8082

## Blue Environment

- Version: 1.0
- Port: 8081
- Production/Stable environment

## Green Environment

- Version: 2.0
- Port: 8082
- New version/testing environment

## Deployment Flow

1. Blue version runs in production.
2. Green version is deployed separately.
3. Green health check is performed.
4. Nginx traffic is switched from Blue to Green.
5. Blue remains available for rollback.
6. If Green fails, traffic is switched back to Blue.

## Health Checks

```bash
curl http://localhost:8081/health
curl http://localhost:8082/health
