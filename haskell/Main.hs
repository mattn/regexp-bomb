import Text.Regex.TDFA
import Data.Time.Clock

main :: IO ()
main = do
    start <- getCurrentTime
    let result = "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaba" =~ "(a+)*b$" :: Bool
    putStrLn $ "result: " ++ show result
    end <- getCurrentTime
    putStrLn $ "elapsed: " ++ show (diffUTCTime end start)
