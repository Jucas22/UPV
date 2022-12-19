import Queue2
main = do
   putStrLn (Queue2.show (dequeue (enqueue 1 empty)))
   putStrLn (Queue2.show (enqueue 10 (enqueue 5 empty)))