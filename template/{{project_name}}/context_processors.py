from django.conf import settings

def project_settings(request):
    return {
        'project_name': settings.PROJECT_NAME,
    }