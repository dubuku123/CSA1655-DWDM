
 #view first six rows of iris dataset
  head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
5          5.0         3.6          1.4         0.2  setosa
6          5.4         3.9          1.7         0.4  setosa
 #define Min-Max normalization function
 min_max_norm <- function(x) {
     (x - min(x)) / (max(x) - min(x))
   }
 
 #apply Min-Max normalization to first four columns in iris dataset
 iris_norm <- as.data.frame(lapply(iris[1:4], min_max_norm))
 
 #view first six rows of normalized iris dataset
 head(iris_norm)
  Sepal.Length Sepal.Width Petal.Length Petal.Width
1   0.22222222   0.6250000   0.06779661  0.04166667
2   0.16666667   0.4166667   0.06779661  0.04166667
3   0.11111111   0.5000000   0.05084746  0.04166667
4   0.08333333   0.4583333   0.08474576  0.04166667
5   0.19444444   0.6666667   0.06779661  0.04166667
6   0.30555556   0.7916667   0.11864407  0.12500000
 #add back Species column
 iris_norm$Species <- iris$Species
 
 #view first six rows of iris_norm
 head(iris_norm)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1   0.22222222   0.6250000   0.06779661  0.04166667  setosa
2   0.16666667   0.4166667   0.06779661  0.04166667  setosa
3   0.11111111   0.5000000   0.05084746  0.04166667  setosa
4   0.08333333   0.4583333   0.08474576  0.04166667  setosa
5   0.19444444   0.6666667   0.06779661  0.04166667  setosa
6   0.30555556   0.7916667   0.11864407  0.12500000  setosa
 #standardize Sepal.Width
 iris$Sepal.Width <- (iris$Sepal.Width - mean(iris$Sepal.Width)) / sd(iris$Sepal.Width)
 
 head(iris)
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1  1.01560199          1.4         0.2  setosa
2          4.9 -0.13153881          1.4         0.2  setosa
3          4.7  0.32731751          1.3         0.2  setosa
4          4.6  0.09788935          1.5         0.2  setosa
5          5.0  1.24503015          1.4         0.2  setosa
6          5.4  1.93331463          1.7         0.4  setosa
 #find mean of Sepal.Width
 mean(iris$Sepal.Width)
[1] 2.034094e-16
 
 #[1] 2.034094e-16 #basically zero
 
 #find standard deviation of Sepal.Width
 sd(iris$Sepal.Width)
[1] 1
 
