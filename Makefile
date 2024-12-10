# Name of the library
NAME = libasm.a

# Tools
NASM = nasm
AR = ar rcs
CC = gcc
RM = rm -f
LD = ld 
# Source and object files
FILES = ft_strlen.s  ft_strcpy.s ft_strcmp.s #ft_write.s ft_read.s ft_strdup.s
OBJS = $(FILES:.s=.o)

# Default rule to build the library
all: $(NAME)

# Rule to build the static library
$(NAME): $(OBJS)
	$(AR) $(NAME) $(OBJS)

# Rule
# Rule to compile assembly files into object files
%.o: %.s
	$(NASM) -f elf64 $< -o $@

# Clean rules
clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
