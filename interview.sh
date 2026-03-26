#!/bin/bash

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
CYAN='\033[0;36m'
NC='\033[0m' 


# Functions
# Print
type_text() {
	    local text="$1"
	    local delay="$2"
	    
	    for ((i=0; i<${#text}; i++)); do
		    echo -n "${text:$i:1}"
		    sleep "$delay"
	    done
	    echo
    }

# Loading
loading() {
	local spin='|/-\'
	local message="$1"
	for ((i=0; i<${#spin}; i++)); do
		echo -ne "\r${GREEN}${spin:$i:1}${NC} $message"
		sleep 0.1
	done
	echo -e "\r* $message                    "
}

# Frame
print_box() {
	local text="$1"
	local len=${#text}
	local line=""
	for ((i=0; i<len+4; i++)); do line+="="; done
	echo -e "${BLUE}+${line}+${NC}"
	echo -e "${BLUE}|  ${CYAN}${text}${NC} ${BLUE}|${NC}"
	echo -e "${BLUE}+${line}+${NC}"
}

# Body
clear

echo
print_box "Linux Admin Candidate"
echo

type_text ">> Инициализация кандидата..." 0.05
sleep 1

loading "Загрузка опыта Linux (2 года)..."
loading "Проверка навыков PostgreSQL..."
loading "Анализ знаний Bash..."
loading "Сканирование мотивации..."
echo

echo -e "${GREEN}>> Технический стек:${NC}"
echo "  * Linux (Ubuntu, CentOS, 100+ серверов)"
echo "  * PostgreSQL (Кластеры, Репликация, Failover)"
echo "  * Bash (Автоматизация, Скрипты)"
echo "  * Docker & Kubernetes (Basic & Learning)"
echo "  * Vim (Любимый редактор <3)"
echo

echo -e "${YELLOW}>> Статус готовности:${NC}"
type_text "  * График 3/3: 100% совместимость" 0.03
type_text "  * Готовность к обучению: 100%" 0.03
type_text "  * Желание работать в CLI: 100%" 0.03
echo

sleep 1
echo -e "${RED}!! ВНИМАНИЕ:${NC}"
echo "  Обнаружена критическая нехватка:"
echo "  -> этого кандидата в вашей команде!"
echo

sleep 1
echo -e "${GREEN}>> Рекомендуемое решение:${NC}"
type_text "  Запустить команду: hire [candidate_name]" 0.05
echo

echo
print_box "Invite me for an interview ^-^"
echo

echo -e "${YELLOW}>> Контакты:${NC}"
echo "  Имя: Olesya"
echo "  mail: oleepi2@mail.ru"
echo

echo -e "${CYAN}>> P.S. Ваше задание выполнено:${NC}"
echo "  version 5.1.16(1)-release (x86_64-pc-linux-gnu)"
echo -e "${CYAN}>>Ответное сообщение:${NC}"
echo '  echo -n "SW52aXRlIG1lIGZvciBhbiBpbnRlcnZpZXcgXi1eCg==" | base64 -d'
echo

echo
