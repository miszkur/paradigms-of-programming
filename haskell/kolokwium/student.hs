import Data.List (sortBy)
import Data.Ord (comparing) 
import Data.Maybe

data Student = Student {id :: Int, name :: String, dateOfBirth :: String} deriving (Show, Eq)

data Score = Score {studentId :: Int, course1Score :: Int,
course2Score :: Int, course3Score :: Int} deriving (Show, Eq)

data StudentWithScores = StudentWithScores Int String String Int Int Int  deriving(Show)

students :: [Student]
students = [Student 26453 "Kristalee Copperwaite" "2000", Student 33596 "Roeberta Naden" "1997", Student 40241 "Alicia Maden" "1991"]
scores :: [Score]
scores = [Score 26453 93 97 80, Score 40241 86 85 87, Score 33596 82 60 80, Score 311 82 60 80]

sortByDate :: [Student] -> [Student]
sortByDate = sortBy cmp 
        where cmp (Student _ _ date1) (Student _ _ date2) = compare date1 date2

sortByDate' = sortBy (comparing dateOfBirth)

sortByName :: [Student] -> [Student]
sortByName = sortBy cmp
        where cmp (Student _ name1 _) (Student _ name2 _) = compare name2 name1


sortByFirstScore :: [Score] -> [Score]
sortByFirstScore = sortBy cmp where 
        cmp (Score id1 s11 _ _) (Score id2 s21 _ _) | s11==s21 = compare id1 id2
                                                    | otherwise = compare s11 s21

sortByScores :: [Score] -> [Score]
sortByScores = sortBy cmp
        where cmp (Score _ s11 s12 s13) (Score _ s21 s22 s23) =
                let sum1 = s11+s12+s13 in
                let sum2 = s21+s22+s23 in 
                compare sum1 sum2


toStudentWithScores :: Student -> Score -> Maybe StudentWithScores
toStudentWithScores (Student id name date) (Score id1 s1 s2 s3) | id==id1 = Just $ StudentWithScores id name date s1 s2 s3
        | otherwise = Nothing


findById :: [Score] -> Int -> [Score]
findById scores ids = filter (\x -> (studentId x) == ids ) scores

--findBy :: (Score -> Bool) -> [Score] -> [Score]
--findBy f scrs = filter f

mapBy :: (Score -> a) -> [Score] -> [a]
mapBy f scrs = map f scrs

reduceBy :: ([a] -> Score -> [a]) -> [Score] -> [a]
reduceBy f scrs = foldl f [] scrs

mapToJoin :: Student -> [Score] -> [Maybe StudentWithScores]
mapToJoin st scrs = map (toStudentWithScores st) scrs

joinStep1 :: [Student] -> [Score] -> [(Student, [Score])]
joinStep1 students scrs = map (\st -> (st, findById scrs (Main.id st)) ) students 

joinStep2 :: [(Student, [Score])] -> [[Maybe StudentWithScores]]
joinStep2 studScrs = map (\(st,scrs) -> mapToJoin st scrs) studScrs 

joinStep3 :: [[Maybe StudentWithScores]] -> [StudentWithScores]
joinStep3 = foldr (\s scc -> (map (\(Just a) -> a) ( filter isJust s)) ++ scc) [] 

join :: [Student] -> [Score] -> [StudentWithScores]
join st sc = joinStep3 $ joinStep2 $ joinStep1 st sc 



        


