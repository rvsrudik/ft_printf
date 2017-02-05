# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: vrudenko <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/28 14:19:32 by vrudenko          #+#    #+#              #
#    Updated: 2016/11/29 18:04:45 by vrudenko         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libftprintf.a
SRC = ft_printf.c \
      ft_flag_analysis.c \
      ft_convert_argument.c \
      ft_use_flags.c \
      ft_write_argument.c \
      ft_reset_params.c \
      ft_determ_precision.c \
      ft_determ_specifier.c \
      ft_adr_to_str.c \
      ft_char_to_str.c \
      ft_itoa.c \
      ft_itoa_base.c \
      ft_itoa_base_big.c \
      ft_itoa_base_big_h.c \
      ft_itoa_base_big_hh.c \
      ft_itoa_base_big_j.c \
      ft_itoa_base_big_l.c \
      ft_itoa_base_big_ll.c \
      ft_itoa_base_big_z.c \
      ft_itoa_base_h.c \
      ft_itoa_base_hh.c \
      ft_itoa_base_j.c \
      ft_itoa_base_l.c \
      ft_itoa_base_ll.c \
      ft_itoa_base_z.c \
      ft_itoa_h.c \
      ft_itoa_hh.c \
      ft_itoa_j.c \
      ft_itoa_l.c \
      ft_itoa_ll.c \
      ft_itoa_z.c \
      ft_str_to_str.c \
      ft_uitoa.c \
      ft_uitoa_h.c \
      ft_uitoa_hh.c \
      ft_uitoa_j.c \
      ft_uitoa_l.c \
      ft_uitoa_ll.c \
      ft_uitoa_z.c \
      ft_convert_c.c \
      ft_convert_d.c \
      ft_convert_o.c \
      ft_convert_p.c \
      ft_convert_percent.c \
      ft_convert_s.c \
      ft_convert_u.c \
      ft_convert_x.c \
      flags/ft_flag_hash.c \
      flags/ft_flag_plus.c \
      flags/ft_flag_space.c \
      flags/ft_precision.c \
      flags/ft_precision2.c \
      flags/ft_width.c \
      ft_atoi.c \
      ft_atoi_l.c \
      ft_isdigit.c \
      ft_putchar.c \
      ft_putstr.c \
      ft_strchr.c \
      ft_strcmp.c \
      ft_strdel.c \
      ft_strjoin.c \
      ft_strlen.c \
      ft_strncpy.c \
      ft_strnew.c \
      ft_strnew_bchar.c \
      ft_strstr.c \
      ft_strtrim.c \
      ft_strcpy.c

OBJ = ft_printf.o \
      ft_flag_analysis.o \
      ft_convert_argument.o \
      ft_use_flags.o \
      ft_write_argument.o \
      ft_reset_params.o \
      ft_determ_precision.o \
      ft_adr_to_str.o \
      ft_determ_specifier.o \
      ft_char_to_str.o \
      ft_itoa.o \
      ft_itoa_base.o \
      ft_itoa_base_big.o \
      ft_itoa_base_big_h.o \
      ft_itoa_base_big_hh.o \
      ft_itoa_base_big_j.o \
      ft_itoa_base_big_l.o \
      ft_itoa_base_big_ll.o \
      ft_itoa_base_big_z.o \
      ft_itoa_base_h.o \
      ft_itoa_base_hh.o \
      ft_itoa_base_j.o \
      ft_itoa_base_l.o \
      ft_itoa_base_ll.o \
      ft_itoa_base_z.o \
      ft_itoa_h.o \
      ft_itoa_hh.o \
      ft_itoa_j.o \
      ft_itoa_l.o \
      ft_itoa_ll.o \
      ft_itoa_z.o \
      ft_str_to_str.o \
      ft_uitoa.o \
      ft_uitoa_h.o \
      ft_uitoa_hh.o \
      ft_uitoa_j.o \
      ft_uitoa_l.o \
      ft_uitoa_ll.o \
      ft_uitoa_z.o \
      ft_convert_c.o \
      ft_convert_d.o \
      ft_convert_o.o \
      ft_convert_p.o \
      ft_convert_percent.o \
      ft_convert_s.o \
      ft_convert_u.o \
      ft_convert_x.o \
      ft_flag_hash.o \
      ft_flag_plus.o \
      ft_flag_space.o \
      ft_precision.o \
      ft_precision2.o \
      ft_width.o \
      ft_atoi.o \
      ft_atoi_l.o \
      ft_isdigit.o \
      ft_putchar.o \
      ft_putstr.o \
      ft_strchr.o \
      ft_strcmp.o \
      ft_strdel.o \
      ft_strjoin.o \
      ft_strlen.o \
      ft_strncpy.o \
      ft_strnew.o \
      ft_strnew_bchar.o \
      ft_strstr.o \
      ft_strtrim.o \
      ft_strcpy.o  

CC = gcc
INC = -Iincludes
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJ)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

.c.o:
	$(CC) $(INC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ)
fclean: clean
	rm -rf $(NAME)
re: fclean all