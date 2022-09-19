
 #create data frame
 df <- data.frame(rating=c(67, 75, 79, 85, 90, 96, 97),
                  points=c(8, 12, 16, 15, 22, 28, 24),
                  assists=c(4, 6, 6, 5, 3, 8, 7),
                  rebounds=c(1, 4, 3, 3, 2, 6, 7))
 #view data frame
 df
  rating points assists rebounds
1     67      8       4        1
2     75     12       6        4
3     79     16       6        3
4     85     15       5        3
5     90     22       3        2
6     96     28       8        6
7     97     24       7        7
 #fit multiple linear regression model
 model <- lm(rating ~ points + assists + rebounds, data=df)
 #view model summary
 summary(model)

Call:
lm(formula = rating ~ points + assists + rebounds, data = df)

Residuals:
      1       2       3       4       5       6       7 
-1.5902 -1.7181  0.2413  4.8597 -1.0201 -0.6082 -0.1644 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)   
(Intercept)  66.4355     6.6932   9.926  0.00218 **
points        1.2152     0.2788   4.359  0.02232 * 
assists      -2.5968     1.6263  -1.597  0.20860   
rebounds      2.8202     1.6118   1.750  0.17847   
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 3.193 on 3 degrees of freedom
Multiple R-squared:  0.9589,    Adjusted R-squared:  0.9179 
F-statistic: 23.35 on 3 and 3 DF,  p-value: 0.01396

 #define new player
 new <- data.frame(points=c(20), assists=c(5), rebounds=c(2))
 
 #use the fitted model to predict the rating for the new player
 predict(model, newdata=new)
       1 
83.39607 
 
