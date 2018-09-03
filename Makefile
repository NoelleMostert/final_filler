# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nmostert <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/30 10:52:24 by nmostert          #+#    #+#              #
#    Updated: 2018/08/23 11:42:57 by nmostert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME=resources/players/filler
CC=gcc
CFLAGS=-Wall -Wextra -Werror -I.
CFILES=place.c \
	   trim.c \
	   main.c \

OBJ=$(CFILES:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJ) 
	make -C libft
	gcc -o $(NAME) $(CFLAGS) $(OBJ) libft/libft.a

%.o: %.c
	$(CC) $(CFLAGS) $< -c -o $@

p100:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/champely.filler

p101:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/champely.filler

p102:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/champely.filler

p200:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/abanlin.filler

p201:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/abanlin.filler

p202:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/abanlin.filler

p300:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/hcao.filler

p301:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/hcao.filler

p302:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/hcao.filler

p400:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/grati.filler

p401:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/grati.filler

p402:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/grati.filler

p500:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/carli.filler

p501:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/carli.filler

p502:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/carli.filler

p600:
	./resources/filler_vm -f ./resources/maps/map00 -p1 ./resources/players/filler -p2 ./resources/players/superjeannot.filler

p601:
	./resources/filler_vm -f ./resources/maps/map01 -p1 ./resources/players/filler -p2 ./resources/players/superjeannot.filler

p602:
	./resources/filler_vm -f ./resources/maps/map02 -p1 ./resources/players/filler -p2 ./resources/players/superjeannot.filler

clean:
	make clean -C libft
	rm -rf $(OBJ)

fclean: clean
	make fclean -C libft
	rm -rf $(NAME)

re: fclean $(NAME)

.PHONY: clean fclean re
