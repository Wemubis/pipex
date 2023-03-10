# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mle-boud <mle-boud@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/01/07 12:34:07 by mle-boud          #+#    #+#              #
#    Updated: 2023/01/07 12:34:07 by mle-boud         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = pipex

CC = cc
CFLAGS = -Wall -Wextra -Werror
RM = rm -f

HEADER = pipex.h

################ SRCS ################
SRCS = main.c pipex.c wait_pids.c\
		close_fds.c errors_process.c \
		check_files.c left_right_pipe.c \
		get_path.c error_open.c\

################ OBJS ################
OBJS = $(patsubst %.c,%.o,$(SRCS))

################ PHONY ################
.PHONY: all clean fclean re $(NAME)

################ RULES ################
all: otherMakefile $(NAME)

$(NAME): $(OBJS) libft/libft.a
	$(CC) $(CFLAGS) $^ -o $@

otherMakefile:
	make -C libft

%.o: %.c $(HEADER)
	$(CC) $(CFLAGS) -I. -c $< -o $@ 

clean:
	make -C libft clean
	$(RM) $(OBJS)

fclean: clean
	$(RM) libft/libft.a
	$(RM) $(NAME)

re: fclean all
