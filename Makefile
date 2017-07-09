default: sgf.g4
	java -jar ~/bin/antlr-4.5-complete.jar sgf.g4
	javac *.java
	java -cp ~/bin/antlr-4.5-complete.jar:. org.antlr.v4.runtime.misc.TestRig sgf collection test/8718-KuroNeko-creedfoxx-chensicha.sgf -tree

clean:
	rm -f *.java *.class *.tokens
