# Django Project Template

A Copier template for Django projects with:
- Custom user model
- Docker & Docker Compose setup
- PostgreSQL database
- Django-allauth integration
- Bootstrap 5 & Crispy Forms
- Static files configuration

## Usage

```bash
# copier copy https://github.com/ricky-lim/django_template <project_dir> --data "secret_key=$(openssl rand -hex 32)"
$ copier copy https://github.com/ricky-lim/django_template  . --data "secret_key=$(openssl rand -hex 32)"
```