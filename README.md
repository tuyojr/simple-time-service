# SimpleTimeService

If you want more information on how this application works and how to test locally with the Python file or with Docker, navigate to [this documentation](./app/README.md). For the infrastructure that gets built on AWS, you can refer to [this documentation](./terraform/README.md).

## Project Requirements

- Python3
- Docker
- Docker Hub
- AWS CLI
- Terraform
- Git
- GitHub Actions

### Project Structure

```TEXT
.
├── app
│   ├── Dockerfile
│   ├── images
│   │   ├── ...
│   ├── README.md
│   └── requirements.txt
├── README.md
└── terraform
    ├── aws
    │   ├── images
    │   │   ├── ...
    │   ├── ...config files
    ├── backend
    │   ├── ...config files
    └── README.md
```
