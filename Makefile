#-----------------------------------------------------
# Some usefull instructions...
#
BIBLIO=biblio.bib
#-----------------------------------------------------

biblio: 
	@echo '==> Generating publication entries'
	academic import --bibtex $(BIBLIO) -v 

codecov:
	@echo '==> Uploading code coverage reports'
	bash <(curl -s https://codecov.io/bash)

clean:
	hugo mod clean
	hugo mod get -u ./...