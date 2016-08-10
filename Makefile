
ifndef install
	install=/usr/local/share/
endif
export install

projectName=NASDAQ-ITCH-Parser

mainClass=Parse
shareDir=$(install)
installDir=$(shareDir)/$(projectName)/
installClass=$(installDir)/Parse.java

build: src/$(mainClass).class

src/Parse.class: src/$(mainClass).java
	cd src/ && javac $(mainClass).java

install: $(installClass)

$(installClass): $(installDir)
	cp -r src/* $(installDir)

$(installDir):
	mkdir -p $(installDir)

clean:
	find src -name '*.class' | xargs rm
