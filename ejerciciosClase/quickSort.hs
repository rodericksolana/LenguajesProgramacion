--quickSort

quickSort [] = []
quickSort (h:t) = let left = [x | x <- t, x < h]
                      right = [x | x <- t, x >= h]
                  in
                    quickSort left ++ [h] ++ quickSort right