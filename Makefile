BACKUP_DIR = ~/.oldnvim/
VERSION = 0.0.1 beta

RED							:= \033[38;5;196m
GREEN						:= \033[38;5;82m
BLUE						:= \033[38;5;27m
YELLOW						:= \033[38;5;11m
ORANGE						:= \033[38;5;202m
PURPLE						:= \033[38;5;129m
CYAN						:= \033[38;5;44m
RST						:= \033[00m

all:  $(BACKUP_DIR) $(eval SHELL:=/bin/zsh)
	@echo -e "Atmovim Neovim configuration version : $(PURPLE) $(VERSION) $(RST)"
	@echo -e "\t\t\t\t$(GREEN)H $(PURPLE)E $(GREEN)L $(PURPLE)P  $(GREEN)M $(PURPLE)A $(GREEN)I $(PURPLE)N\t\n"
	@echo -e "\t$(GREEN)┌─────────────────────────────┬─────────────────────────────────────────┐"
	@echo -e "\t$(GREEN)│ $(PURPLE)COMMAND:$(GREEN)                    │ $(PURPLE)DESCRIPTION:$(GREEN)                            │"
	@echo -e "\t$(GREEN)│ $(PURPLE)install$(GREEN)     	              │ $(PURPLE)install Atmovim configuration$(GREEN)           │"
	@echo -e "\t$(GREEN)│ $(PURPLE)restore$(GREEN)                     │ $(PURPLE)restore your old configuration$(GREEN)          │"
	@echo -e "\t$(GREEN)│ $(PURPLE)fclean$(GREEN)                      │ $(PURPLE)remove atmovim configuration$(GREEN)            │"
	@echo -e "\t$(GREEN)│ $(PURPLE)help$(GREEN)                        │ $(PURPLE)show this main$(GREEN)                          │"
	@echo -e "\t$(GREEN)└─────────────────────────────┴─────────────────────────────────────────┘$(RST)\n\n\n"

install: $(BACKUP_DIR)
	@echo -e "$(GREEN)[$(BLUE)+$(GREEN)] Installing Neovim configuration...\033[00m"
	@if [ -d $(BACKUP_DIR) ]; then cp -r ~/.config/nvim/ $(BACKUP_DIR); fi
	@rm -rf ~/.config/nvim/
	@cp -r ./AtmoVim ~/.config/
	@mv ~/.config/AtmoVim ~/.config/nvim
	@echo -e "$(GREEN)[$(BLUE)+$(GREEN)] Neovim Configuration installed successfully !\033[00m"

$(BACKUP_DIR):
	mkdir -p $(BACKUP_DIR) 

restore:
	@rm -rf ~/.config/nvim/
	@cp -r $(BACKUP_DIR)nvim/ ~/.config/
	@echo -e "$(GREEN)[$(BLUE)+$(GREEN)] Your old configuration has been restored !\033[00m"

fclean:
	@rm -rf ~/.config/nvim/
	@echo -e "$(GREEN)[$(BLUE)+$(GREEN)] Cleaning current neovim configuration\033[00m"

.POHNY: all restore install fclean
