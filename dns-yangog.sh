#!/bin/bash

echo "!=== Анализатор интернет-соединения ===!"
echo "1.DNS"
nslookup google.com | grep "Address"
echo ""
echo "2. Проверяем связь с Яндекс..."
ping -c 3 yandex.ru | grep "time"
echo ""
echo "3. Смотрим открытые порты..."
ss -tunp | head -10
echo ""
echo "4. Проверяем маршрут до Google..."
traceroute -n google.com -m 5
