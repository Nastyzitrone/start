import System.Process

main = do
 	_ <- createProcess $ shell "sh start.do"
	return ()
