from django.urls import path, include
from common.views import get_gs

urlpatterns = [
    path("get/gs", get_gs, name="get_gs"),
]
