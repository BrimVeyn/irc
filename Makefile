NAME = ircserv

CC = c++

CFLAGS = -Wall -Werror -Wextra -std=c++98 -g3

SRC_DIR = srcs
INCLUDE_DIR = includes

SRC = $(SRC_DIR)/main.cpp $(SRC_DIR)/parser.cpp $(SRC_DIR)/server.cpp $(SRC_DIR)/msghandler.cpp $(SRC_DIR)/Client.cpp $(SRC_DIR)/Channel.cpp

#INCLUDES = $(INCLUDE_DIR)/server.hpp


OBJ = $(SRC:.cpp=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

$(SRC_DIR)/%.o: $(SRC_DIR)/%.cpp # $(INCLUDES)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
