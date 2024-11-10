### Задание - cоздать контейнер для REST API сервера проекта из курса по Django

Запустить контейнер с приложением:
1. docker build -t 'image_name' .
2. docker run -d --name='any_name' -p 'free_port':8000 'image_name'

Проверить работоспособность контейнера после запуска можно по ссылке
http://localhost:'port'/api/v1/
