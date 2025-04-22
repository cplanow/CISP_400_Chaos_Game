# Source and object configurations
SRC_DIR :=./code
OBJ_DIR :=
SRC_FILES := $(wildcard $(SRC_DIR)/*.cpp)
OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))

# SFML specific paths
SFML_PATH := /opt/homebrew/opt/sfml@2
CPPFLAGS := -g -Wall -std=c++17 -I$(SFML_PATH)/include
LDFLAGS := -L$(SFML_PATH)/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio

# Output target binary name
TARGET := ChaosGame.out

# Build executable target
$(TARGET): $(OBJ_FILES)
	$(CXX) -o $@ $^ $(LDFLAGS)

# Build individual object files
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
	$(CXX) $(CPPFLAGS) -c -o $@ $<

# Run the game
run: $(TARGET)
	./$(TARGET)

# Clean files
clean:
	rm -f $(TARGET) $(OBJ_FILES)


#
#SRC_DIR := .
#OBJ_DIR := .
#SRC_FILES := $(wildcard $(SRC_DIR)/*.cpp)
#OBJ_FILES := $(patsubst $(SRC_DIR)/%.cpp,$(OBJ_DIR)/%.o,$(SRC_FILES))
#SFML_DIR := /opt/homebrew/opt/sfml@2
#LDFLAGS := -L$(SFML_DIR)/lib -lsfml-graphics -lsfml-window -lsfml-system -lsfml-audio
#CXXFLAGS := -g -Wall -std=c++17 -I$(SFML_DIR)/include
#TARGET := ChaosGame.out
#
#$(TARGET): $(OBJ_FILES)
#	g++ -o $@ $^ $(LDFLAGS)
#
#$(OBJ_DIR)/%.o: $(SRC_DIR)/%.cpp
#	g++ $(CXXFLAGS) -c -o $@ $<
#
#run: $(TARGET)
#	./$(TARGET)
#
#clean:
#	rm -f $(TARGET) *.o