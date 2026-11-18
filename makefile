.PHONY: all clean

all:
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "Projet : jeu de devinettes en Bash (nombre de fichiers du répertoire)." >> README.md
	@echo "" >> README.md
	@echo "- **Date et heure d'exécution de make :** $$(date)" >> README.md
	@echo "- **Nombre de lignes de code dans guessinggame.sh :** $$(wc -l < guessinggame.sh | tr -d ' ')" >> README.md
	@echo "README.md généré."

clean:
	rm -f README.md
