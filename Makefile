SRC_M = ft_bzero.c ft_isalnum.c ft_isalpha.c ft_isascii.c ft_isdigit.c ft_isprint.c ft_memset.c ft_strlen.c ft_memcpy.c ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strchr.c ft_strrchr.c ft_strncmp.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_strnstr.c ft_atoi.c ft_calloc.c ft_strdup.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c ft_itoa.c
SRC_B = ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstadd_back_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c
OBJS_M:= $(SRC_M:.c=.o)
OBJS_B:= $(SRC_B:.c=.o)
OBJS = $(OBJS_M) $(OBJS_B)
NAME = libft.a
CC = cc
FLAGS = -Wall -Wextra -Werror
INC = libft.h
RM = rm -f
AR = ar rcs

all: $(NAME)

$(NAME): $(OBJS_M) $(INC)
	$(AR) $@ $^

%.o: %.c $(INC)
	$(CC) $(FLAGS) -I. -c $< -o $@

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

bonus: $(OBJS_B)
	$(AR) $(NAME) $(OBJS_B)

.PHONY: all clean fclean re bonus