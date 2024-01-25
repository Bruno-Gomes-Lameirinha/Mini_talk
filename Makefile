NAME		:= so_long
NAME_BONUS		:= so_long_bonus

CFLAGS	:= -g3 -Wextra -Wall -Werror -Wunreachable-code
LIBMLX	:= ./lib/MLX42
LIBFT	:= ./libft/libft
HEADERS	:= -I $(LIBMLX)/include -I $(LIBFT)
LIBS	:= $(LIBMLX)/build/libmlx42.a -ldl -lglfw -pthread -lm
MK = mkdir -p

SOURCE_PATH = src/
SOURCE_BONUS_PATH = src_bonus/

LIBFT_PATH = libft/
LIBFT = libft/libft.a

SRCS	:= \
			so_long.c \
			map_check_utils.c \
			map_check_utils_II.c  \
			map_check_utils_III.c  \
			open_close_args.c \
			free_error.c \
			mlx.c \
			mlx_II.c \
			mlx_III.c \

SRCS_BONUS	:= \
			so_long_bonus.c \
			map_check_utils_bonus.c \
			map_check_utils_II_bonus.c  \
			map_check_utils_III_bonus.c  \
			open_close_args_bonus.c \
			free_error_bonus.c \
			mlx_bonus.c \
			mlx_II_bonus.c \
			mlx_III_bonus.c \
			mlx_IV_bonus.c \

OBJECTS_PATH = objects
OBJS	:= $(addprefix $(OBJECTS_PATH)/, $(SRCS:%.c=%.o))

OBJECTS_BONUS_PATH = objects_bonus
OBJS_BONUS	:= $(addprefix $(OBJECTS_BONUS_PATH)/, $(SRCS_BONUS:%.c=%.o))

all: $(LIBFT) libmlx $(NAME)

$(LIBFT): 
	make -C $(LIBFT_PATH)

libmlx:
	@cmake $(LIBMLX) -B $(LIBMLX)/build && make -C $(LIBMLX)/build -j4

$(OBJECTS_PATH)/%.o: $(SOURCE_PATH)%.c
	@$(MK) $(@D)
	@$(CC) $(CFLAGS) -o $@ -c $< $(HEADERS) && printf "Compiling: $(notdir $<) "

$(NAME): $(OBJS)
	@$(CC) $(OBJS) $(LIBFT) $(LIBS) $(HEADERS) -o $(NAME)

bonus: $(LIBFT) libmlx $(NAME_BONUS)

$(OBJECTS_BONUS_PATH)/%.o: $(SOURCE_BONUS_PATH)%.c
	@$(MK) $(@D)
	@$(CC) $(CFLAGS) -o $@ -c $< $(HEADERS) && printf "Compiling: $(notdir $<) "

$(NAME_BONUS): $(OBJS_BONUS)
	@$(CC) $(OBJS_BONUS) $(LIBFT) $(LIBS) $(HEADERS) -o $(NAME_BONUS)

clean:
	@rm -rf $(OBJS) $(OBJS_BONUS)
	@rm -rf $(LIBMLX)/build 
	@rm -rf $(OBJECTS_PATH)
	@rm -rf $(OBJECTS_BONUS_PATH)
	@rm -rf $(LIBFT_PATH)/*.o

fclean: clean
	@rm -rf $(NAME) $(LIBFT) $(NAME_BONUS) 

re: fclean all

bre: fclean bonus

.PHONY: all clean fclean re libmlx
