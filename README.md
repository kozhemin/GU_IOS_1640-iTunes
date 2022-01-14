# Архитектуры и шаблоны проектирования на Swift
Архитектурные паттерны. Часть 1. MVC, MVP

Поиск приложений по iTunes и экрана, отображающего данные о выбранном приложении.
- Создайте сабмодуль с информацией о последней версии  приложения («Что нового»). Для этого необходимо дополнить модель данных теми данными, которые приходят с сервера, но пока не парсятся. Отображайте (как и в самом appStore) заголовок, номер версии, ее описание
- Добавьте новый экран поиска — поиск по песням в iTunes. Модель песни уже есть (при необходимости дополняйте ее данными с сервера, которые пока не декодятся), сервис также умеет запрашивать песни. Нужно сделать экран поиска по песням на архитектуре MVP