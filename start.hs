import System.Process (createProcess, waitForProcess, shell)
import System.Environment (getArgs)

main :: IO ()
main = do
 args <- getArgs
 mapM_ start args

start :: String -> IO ()
start target = do
 (_, _, _, ph) <- createProcess $ shell $ "sh " ++ target ++ ".do"
 _ <- waitForProcess ph
 return ()

