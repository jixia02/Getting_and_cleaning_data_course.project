Codebook for Getting and cleaning data course project
2017.03.22
Jixia Liu


List the key variable in the data table
> variable.names(aggr.data)
 [1] "subject"                  "label"                    "tbodyaccmeanx"           
 [4] "tbodyaccmeany"            "tbodyaccmeanz"            "tbodyaccstdx"            
 [7] "tbodyaccstdy"             "tbodyaccstdz"             "tgravityaccmeanx"        
[10] "tgravityaccmeany"         "tgravityaccmeanz"         "tgravityaccstdx"         
[13] "tgravityaccstdy"          "tgravityaccstdz"          "tbodyaccjerkmeanx"       
[16] "tbodyaccjerkmeany"        "tbodyaccjerkmeanz"        "tbodyaccjerkstdx"        
[19] "tbodyaccjerkstdy"         "tbodyaccjerkstdz"         "tbodygyromeanx"          
[22] "tbodygyromeany"           "tbodygyromeanz"           "tbodygyrostdx"           
[25] "tbodygyrostdy"            "tbodygyrostdz"            "tbodygyrojerkmeanx"      
[28] "tbodygyrojerkmeany"       "tbodygyrojerkmeanz"       "tbodygyrojerkstdx"       
[31] "tbodygyrojerkstdy"        "tbodygyrojerkstdz"        "tbodyaccmagmean"         
[34] "tbodyaccmagstd"           "tgravityaccmagmean"       "tgravityaccmagstd"       
[37] "tbodyaccjerkmagmean"      "tbodyaccjerkmagstd"       "tbodygyromagmean"        
[40] "tbodygyromagstd"          "tbodygyrojerkmagmean"     "tbodygyrojerkmagstd"     
[43] "fbodyaccmeanx"            "fbodyaccmeany"            "fbodyaccmeanz"           
[46] "fbodyaccstdx"             "fbodyaccstdy"             "fbodyaccstdz"            
[49] "fbodyaccjerkmeanx"        "fbodyaccjerkmeany"        "fbodyaccjerkmeanz"       
[52] "fbodyaccjerkstdx"         "fbodyaccjerkstdy"         "fbodyaccjerkstdz"        
[55] "fbodygyromeanx"           "fbodygyromeany"           "fbodygyromeanz"          
[58] "fbodygyrostdx"            "fbodygyrostdy"            "fbodygyrostdz"           
[61] "fbodyaccmagmean"          "fbodyaccmagstd"           "fbodybodyaccjerkmagmean" 
[64] "fbodybodyaccjerkmagstd"   "fbodybodygyromagmean"     "fbodybodygyromagstd"     
[67] "fbodybodygyrojerkmagmean" "fbodybodygyrojerkmagstd" 


Dataset structure
> str(aggr.data)
'data.frame':	180 obs. of  68 variables:
 $ subject                 : int  1 2 3 4 5 6 7 8 9 10 ...
 $ label                   : chr  "LAYING" "LAYING" "LAYING" "LAYING" ...
 $ tbodyaccmeanx           : num  0.222 0.281 0.276 0.264 0.278 ...
 $ tbodyaccmeany           : num  -0.0405 -0.0182 -0.019 -0.015 -0.0183 ...
 $ tbodyaccmeanz           : num  -0.113 -0.107 -0.101 -0.111 -0.108 ...
 $ tbodyaccstdx            : num  -0.928 -0.974 -0.983 -0.954 -0.966 ...
 $ tbodyaccstdy            : num  -0.837 -0.98 -0.962 -0.942 -0.969 ...
 $ tbodyaccstdz            : num  -0.826 -0.984 -0.964 -0.963 -0.969 ...
 $ tgravityaccmeanx        : num  -0.249 -0.51 -0.242 -0.421 -0.483 ...
 $ tgravityaccmeany        : num  0.706 0.753 0.837 0.915 0.955 ...
 $ tgravityaccmeanz        : num  0.446 0.647 0.489 0.342 0.264 ...
 $ tgravityaccstdx         : num  -0.897 -0.959 -0.983 -0.921 -0.946 ...
 $ tgravityaccstdy         : num  -0.908 -0.988 -0.981 -0.97 -0.986 ...
 $ tgravityaccstdz         : num  -0.852 -0.984 -0.965 -0.976 -0.977 ...
 $ tbodyaccjerkmeanx       : num  0.0811 0.0826 0.077 0.0934 0.0848 ...
 $ tbodyaccjerkmeany       : num  0.00384 0.01225 0.0138 0.00693 0.00747 ...
 $ tbodyaccjerkmeanz       : num  0.01083 -0.0018 -0.00436 -0.00641 -0.00304 ...
 $ tbodyaccjerkstdx        : num  -0.958 -0.986 -0.981 -0.978 -0.983 ...
 $ tbodyaccjerkstdy        : num  -0.924 -0.983 -0.969 -0.942 -0.965 ...
 $ tbodyaccjerkstdz        : num  -0.955 -0.988 -0.982 -0.979 -0.985 ...
 $ tbodygyromeanx          : num  -0.01655 -0.01848 -0.02082 -0.00923 -0.02189 ...
 $ tbodygyromeany          : num  -0.0645 -0.1118 -0.0719 -0.093 -0.0799 ...
 $ tbodygyromeanz          : num  0.149 0.145 0.138 0.17 0.16 ...
 $ tbodygyrostdx           : num  -0.874 -0.988 -0.975 -0.973 -0.979 ...
 $ tbodygyrostdy           : num  -0.951 -0.982 -0.977 -0.961 -0.977 ...
 $ tbodygyrostdz           : num  -0.908 -0.96 -0.964 -0.962 -0.961 ...
 $ tbodygyrojerkmeanx      : num  -0.107 -0.102 -0.1 -0.105 -0.102 ...
 $ tbodygyrojerkmeany      : num  -0.0415 -0.0359 -0.039 -0.0381 -0.0404 ...
 $ tbodygyrojerkmeanz      : num  -0.0741 -0.0702 -0.0687 -0.0712 -0.0708 ...
 $ tbodygyrojerkstdx       : num  -0.919 -0.993 -0.98 -0.975 -0.983 ...
 $ tbodygyrojerkstdy       : num  -0.968 -0.99 -0.987 -0.987 -0.984 ...
 $ tbodygyrojerkstdz       : num  -0.958 -0.988 -0.983 -0.984 -0.99 ...
 $ tbodyaccmagmean         : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ tbodyaccmagstd          : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ tgravityaccmagmean      : num  -0.842 -0.977 -0.973 -0.955 -0.967 ...
 $ tgravityaccmagstd       : num  -0.795 -0.973 -0.964 -0.931 -0.959 ...
 $ tbodyaccjerkmagmean     : num  -0.954 -0.988 -0.979 -0.97 -0.98 ...
 $ tbodyaccjerkmagstd      : num  -0.928 -0.986 -0.976 -0.961 -0.977 ...
 $ tbodygyromagmean        : num  -0.875 -0.95 -0.952 -0.93 -0.947 ...
 $ tbodygyromagstd         : num  -0.819 -0.961 -0.954 -0.947 -0.958 ...
 $ tbodygyrojerkmagmean    : num  -0.963 -0.992 -0.987 -0.985 -0.986 ...
 $ tbodygyrojerkmagstd     : num  -0.936 -0.99 -0.983 -0.983 -0.984 ...
 $ fbodyaccmeanx           : num  -0.939 -0.977 -0.981 -0.959 -0.969 ...
 $ fbodyaccmeany           : num  -0.867 -0.98 -0.961 -0.939 -0.965 ...
 $ fbodyaccmeanz           : num  -0.883 -0.984 -0.968 -0.968 -0.977 ...
 $ fbodyaccstdx            : num  -0.924 -0.973 -0.984 -0.952 -0.965 ...
 $ fbodyaccstdy            : num  -0.834 -0.981 -0.964 -0.946 -0.973 ...
 $ fbodyaccstdz            : num  -0.813 -0.985 -0.963 -0.962 -0.966 ...
 $ fbodyaccjerkmeanx       : num  -0.957 -0.986 -0.981 -0.979 -0.983 ...
 $ fbodyaccjerkmeany       : num  -0.922 -0.983 -0.969 -0.944 -0.965 ...
 $ fbodyaccjerkmeanz       : num  -0.948 -0.986 -0.979 -0.975 -0.983 ...
 $ fbodyaccjerkstdx        : num  -0.964 -0.987 -0.983 -0.98 -0.986 ...
 $ fbodyaccjerkstdy        : num  -0.932 -0.985 -0.971 -0.944 -0.966 ...
 $ fbodyaccjerkstdz        : num  -0.961 -0.989 -0.984 -0.98 -0.986 ...
 $ fbodygyromeanx          : num  -0.85 -0.986 -0.97 -0.967 -0.976 ...
 $ fbodygyromeany          : num  -0.952 -0.983 -0.978 -0.972 -0.978 ...
 $ fbodygyromeanz          : num  -0.909 -0.963 -0.962 -0.961 -0.963 ...
 $ fbodygyrostdx           : num  -0.882 -0.989 -0.976 -0.975 -0.981 ...
 $ fbodygyrostdy           : num  -0.951 -0.982 -0.977 -0.956 -0.977 ...
 $ fbodygyrostdz           : num  -0.917 -0.963 -0.967 -0.966 -0.963 ...
 $ fbodyaccmagmean         : num  -0.862 -0.975 -0.966 -0.939 -0.962 ...
 $ fbodyaccmagstd          : num  -0.798 -0.975 -0.968 -0.937 -0.963 ...
 $ fbodybodyaccjerkmagmean : num  -0.933 -0.985 -0.976 -0.962 -0.977 ...
 $ fbodybodyaccjerkmagstd  : num  -0.922 -0.985 -0.975 -0.958 -0.976 ...
 $ fbodybodygyromagmean    : num  -0.862 -0.972 -0.965 -0.962 -0.968 ...
 $ fbodybodygyromagstd     : num  -0.824 -0.961 -0.955 -0.947 -0.959 ...
 $ fbodybodygyrojerkmagmean: num  -0.942 -0.99 -0.984 -0.984 -0.985 ...
 $ fbodybodygyrojerkmagstd : num  -0.933 -0.989 -0.983 -0.983 -0.983 ...
 
 
 
Show a few rows of the dataset

> head(aggr.data)
  subject  label tbodyaccmeanx tbodyaccmeany tbodyaccmeanz tbodyaccstdx tbodyaccstdy tbodyaccstdz
1       1 LAYING     0.2215982   -0.04051395    -0.1132036   -0.9280565   -0.8368274   -0.8260614
2       2 LAYING     0.2813734   -0.01815874    -0.1072456   -0.9740595   -0.9802774   -0.9842333
3       3 LAYING     0.2755169   -0.01895568    -0.1013005   -0.9827766   -0.9620575   -0.9636910
4       4 LAYING     0.2635592   -0.01500318    -0.1106882   -0.9541937   -0.9417140   -0.9626673
5       5 LAYING     0.2783343   -0.01830421    -0.1079376   -0.9659345   -0.9692956   -0.9685625
6       6 LAYING     0.2486565   -0.01025292    -0.1331196   -0.9340494   -0.9246448   -0.9252161
  tgravityaccmeanx tgravityaccmeany tgravityaccmeanz tgravityaccstdx tgravityaccstdy
1       -0.2488818        0.7055498        0.4458177      -0.8968300      -0.9077200
2       -0.5097542        0.7525366        0.6468349      -0.9590144      -0.9882119
3       -0.2417585        0.8370321        0.4887032      -0.9825122      -0.9812027
4       -0.4206647        0.9151651        0.3415313      -0.9212000      -0.9698166
5       -0.4834706        0.9548903        0.2636447      -0.9456953      -0.9859641
6       -0.4767099        0.9565938        0.1758677      -0.8877463      -0.9591620
  tgravityaccstdz tbodyaccjerkmeanx tbodyaccjerkmeany tbodyaccjerkmeanz tbodyaccjerkstdx
1      -0.8523663        0.08108653       0.003838204       0.010834236       -0.9584821
2      -0.9842304        0.08259725       0.012254788      -0.001802649       -0.9858722
3      -0.9648075        0.07698111       0.013804101      -0.004356259       -0.9808793
4      -0.9761766        0.09344942       0.006933132      -0.006410543       -0.9783028
5      -0.9770766        0.08481648       0.007474608      -0.003040672       -0.9833079
6      -0.9281307        0.09634820      -0.001145292       0.003288173       -0.9663411
  tbodyaccjerkstdy tbodyaccjerkstdz tbodygyromeanx tbodygyromeany tbodygyromeanz tbodygyrostdx
1       -0.9241493       -0.9548551   -0.016553094    -0.06448612      0.1486894    -0.8735439
2       -0.9831725       -0.9884420   -0.018476607    -0.11180082      0.1448828    -0.9882752
3       -0.9687107       -0.9820932   -0.020817054    -0.07185072      0.1379996    -0.9745458
4       -0.9422095       -0.9785120   -0.009231563    -0.09301282      0.1697204    -0.9731024
5       -0.9645604       -0.9854194   -0.021893501    -0.07987096      0.1598944    -0.9794987
6       -0.9336745       -0.9596461   -0.007960503    -0.10721832      0.1791021    -0.9553782
  tbodygyrostdy tbodygyrostdz tbodygyrojerkmeanx tbodygyrojerkmeany tbodygyrojerkmeanz
1    -0.9510904    -0.9082847         -0.1072709        -0.04151729        -0.07405012
2    -0.9822916    -0.9603066         -0.1019741        -0.03585902        -0.07017830
3    -0.9772727    -0.9635056         -0.1000445        -0.03897718        -0.06873387
4    -0.9611093    -0.9620738         -0.1050199        -0.03812304        -0.07121563
5    -0.9774274    -0.9605838         -0.1021141        -0.04044469        -0.07083097
6    -0.9436349    -0.9391419         -0.1112673        -0.04241043        -0.07177747
  tbodygyrojerkstdx tbodygyrojerkstdy tbodygyrojerkstdz tbodyaccmagmean tbodyaccmagstd
1        -0.9186085        -0.9679072        -0.9577902      -0.8419292     -0.7951449
2        -0.9932358        -0.9895675        -0.9880358      -0.9774355     -0.9728739
3        -0.9803286        -0.9867627        -0.9833383      -0.9727913     -0.9642182
4        -0.9751032        -0.9868556        -0.9839654      -0.9545576     -0.9312922
5        -0.9834223        -0.9837595        -0.9896796      -0.9667779     -0.9586128
6        -0.9396116        -0.9586288        -0.9595791      -0.9188789     -0.8973262
  tgravityaccmagmean tgravityaccmagstd tbodyaccjerkmagmean tbodyaccjerkmagstd tbodygyromagmean
1         -0.8419292        -0.7951449          -0.9543963         -0.9282456       -0.8747595
2         -0.9774355        -0.9728739          -0.9877417         -0.9855181       -0.9500116
3         -0.9727913        -0.9642182          -0.9794846         -0.9761213       -0.9515648
4         -0.9545576        -0.9312922          -0.9700958         -0.9607864       -0.9302365
5         -0.9667779        -0.9586128          -0.9801413         -0.9774771       -0.9469383
6         -0.9188789        -0.8973262          -0.9547505         -0.9503419       -0.9089802
  tbodygyromagstd tbodygyrojerkmagmean tbodygyrojerkmagstd fbodyaccmeanx fbodyaccmeany
1      -0.8190102           -0.9634610          -0.9358410    -0.9390991    -0.8670652
2      -0.9611641           -0.9917671          -0.9897181    -0.9767251    -0.9798009
3      -0.9542751           -0.9867136          -0.9831393    -0.9806656    -0.9611700
4      -0.9470318           -0.9850685          -0.9826982    -0.9588021    -0.9388834
5      -0.9582879           -0.9864194          -0.9837714    -0.9687417    -0.9654195
6      -0.9209145           -0.9556457          -0.9531570    -0.9391143    -0.9237068
  fbodyaccmeanz fbodyaccstdx fbodyaccstdy fbodyaccstdz fbodyaccjerkmeanx fbodyaccjerkmeany
1    -0.8826669   -0.9244374   -0.8336256   -0.8128916        -0.9570739        -0.9224626
2    -0.9843810   -0.9732465   -0.9810251   -0.9847922        -0.9858136        -0.9827683
3    -0.9683321   -0.9836911   -0.9640946   -0.9632791        -0.9805132        -0.9687521
4    -0.9675043   -0.9524649   -0.9463810   -0.9621545        -0.9785425        -0.9439700
5    -0.9770077   -0.9649539   -0.9729092   -0.9658822        -0.9826897        -0.9653286
6    -0.9380449   -0.9324629   -0.9297112   -0.9240047        -0.9670724        -0.9360434
  fbodyaccjerkmeanz fbodyaccjerkstdx fbodyaccjerkstdy fbodyaccjerkstdz fbodygyromeanx
1        -0.9480609       -0.9641607       -0.9322179       -0.9605870     -0.8502492
2        -0.9861971       -0.9872503       -0.9849874       -0.9893454     -0.9864311
3        -0.9791223       -0.9831226       -0.9710440       -0.9837119     -0.9701673
4        -0.9753833       -0.9800793       -0.9443669       -0.9802612     -0.9672037
5        -0.9832503       -0.9856253       -0.9662426       -0.9861356     -0.9757975
6        -0.9544258       -0.9686192       -0.9357175       -0.9635675     -0.9354398
  fbodygyromeany fbodygyromeanz fbodygyrostdx fbodygyrostdy fbodygyrostdz fbodyaccmagmean
1     -0.9521915     -0.9093027    -0.8822965    -0.9512320    -0.9165825      -0.8617676
2     -0.9833216     -0.9626719    -0.9888607    -0.9819106    -0.9631742      -0.9751102
3     -0.9780997     -0.9623420    -0.9759864    -0.9770325    -0.9672569      -0.9655243
4     -0.9721878     -0.9614793    -0.9750947    -0.9561825    -0.9658075      -0.9393897
5     -0.9782496     -0.9632029    -0.9807058    -0.9772578    -0.9633057      -0.9622350
6     -0.9417715     -0.9326366    -0.9621650    -0.9453651    -0.9471368      -0.9123517
  fbodyaccmagstd fbodybodyaccjerkmagmean fbodybodyaccjerkmagstd fbodybodygyromagmean
1     -0.7983009              -0.9333004             -0.9218040           -0.8621902
2     -0.9751214              -0.9853741             -0.9845685           -0.9721130
3     -0.9683502              -0.9759496             -0.9753054           -0.9645867
4     -0.9371880              -0.9622871             -0.9580371           -0.9615567
5     -0.9625254              -0.9773564             -0.9763819           -0.9682571
6     -0.9053740              -0.9486555             -0.9515527           -0.9301536
  fbodybodygyromagstd fbodybodygyrojerkmagmean fbodybodygyrojerkmagstd
1          -0.8243194               -0.9423669              -0.9326607
2          -0.9610984               -0.9902487              -0.9894927
3          -0.9554419               -0.9842783              -0.9825682
4          -0.9471003               -0.9836091              -0.9825436
5          -0.9592631               -0.9846180              -0.9834345
6          -0.9286949               -0.9536960              -0.9555047

Summary of variables
> summary(aggr.data)
    subject        label           tbodyaccmeanx    tbodyaccmeany       tbodyaccmeanz     
 Min.   : 1.0   Length:180         Min.   :0.2216   Min.   :-0.040514   Min.   :-0.15251  
 1st Qu.: 8.0   Class :character   1st Qu.:0.2712   1st Qu.:-0.020022   1st Qu.:-0.11207  
 Median :15.5   Mode  :character   Median :0.2770   Median :-0.017262   Median :-0.10819  
 Mean   :15.5                      Mean   :0.2743   Mean   :-0.017876   Mean   :-0.10916  
 3rd Qu.:23.0                      3rd Qu.:0.2800   3rd Qu.:-0.014936   3rd Qu.:-0.10443  
 Max.   :30.0                      Max.   :0.3015   Max.   :-0.001308   Max.   :-0.07538  
  tbodyaccstdx      tbodyaccstdy       tbodyaccstdz     tgravityaccmeanx  tgravityaccmeany  
 Min.   :-0.9961   Min.   :-0.99024   Min.   :-0.9877   Min.   :-0.6800   Min.   :-0.47989  
 1st Qu.:-0.9799   1st Qu.:-0.94205   1st Qu.:-0.9498   1st Qu.: 0.8376   1st Qu.:-0.23319  
 Median :-0.7526   Median :-0.50897   Median :-0.6518   Median : 0.9208   Median :-0.12782  
 Mean   :-0.5577   Mean   :-0.46046   Mean   :-0.5756   Mean   : 0.6975   Mean   :-0.01621  
 3rd Qu.:-0.1984   3rd Qu.:-0.03077   3rd Qu.:-0.2306   3rd Qu.: 0.9425   3rd Qu.: 0.08773  
 Max.   : 0.6269   Max.   : 0.61694   Max.   : 0.6090   Max.   : 0.9745   Max.   : 0.95659  
 tgravityaccmeanz   tgravityaccstdx   tgravityaccstdy   tgravityaccstdz   tbodyaccjerkmeanx
 Min.   :-0.49509   Min.   :-0.9968   Min.   :-0.9942   Min.   :-0.9910   Min.   :0.04269  
 1st Qu.:-0.11726   1st Qu.:-0.9825   1st Qu.:-0.9711   1st Qu.:-0.9605   1st Qu.:0.07396  
 Median : 0.02384   Median :-0.9695   Median :-0.9590   Median :-0.9450   Median :0.07640  
 Mean   : 0.07413   Mean   :-0.9638   Mean   :-0.9524   Mean   :-0.9364   Mean   :0.07947  
 3rd Qu.: 0.14946   3rd Qu.:-0.9509   3rd Qu.:-0.9370   3rd Qu.:-0.9180   3rd Qu.:0.08330  
 Max.   : 0.95787   Max.   :-0.8296   Max.   :-0.6436   Max.   :-0.6102   Max.   :0.13019  
 tbodyaccjerkmeany    tbodyaccjerkmeanz   tbodyaccjerkstdx  tbodyaccjerkstdy  tbodyaccjerkstdz  
 Min.   :-0.0386872   Min.   :-0.067458   Min.   :-0.9946   Min.   :-0.9895   Min.   :-0.99329  
 1st Qu.: 0.0004664   1st Qu.:-0.010601   1st Qu.:-0.9832   1st Qu.:-0.9724   1st Qu.:-0.98266  
 Median : 0.0094698   Median :-0.003861   Median :-0.8104   Median :-0.7756   Median :-0.88366  
 Mean   : 0.0075652   Mean   :-0.004953   Mean   :-0.5949   Mean   :-0.5654   Mean   :-0.73596  
 3rd Qu.: 0.0134008   3rd Qu.: 0.001958   3rd Qu.:-0.2233   3rd Qu.:-0.1483   3rd Qu.:-0.51212  
 Max.   : 0.0568186   Max.   : 0.038053   Max.   : 0.5443   Max.   : 0.3553   Max.   : 0.03102  
 tbodygyromeanx     tbodygyromeany     tbodygyromeanz     tbodygyrostdx     tbodygyrostdy    
 Min.   :-0.20578   Min.   :-0.20421   Min.   :-0.07245   Min.   :-0.9943   Min.   :-0.9942  
 1st Qu.:-0.04712   1st Qu.:-0.08955   1st Qu.: 0.07475   1st Qu.:-0.9735   1st Qu.:-0.9629  
 Median :-0.02871   Median :-0.07318   Median : 0.08512   Median :-0.7890   Median :-0.8017  
 Mean   :-0.03244   Mean   :-0.07426   Mean   : 0.08744   Mean   :-0.6916   Mean   :-0.6533  
 3rd Qu.:-0.01676   3rd Qu.:-0.06113   3rd Qu.: 0.10177   3rd Qu.:-0.4414   3rd Qu.:-0.4196  
 Max.   : 0.19270   Max.   : 0.02747   Max.   : 0.17910   Max.   : 0.2677   Max.   : 0.4765  
 tbodygyrostdz     tbodygyrojerkmeanx tbodygyrojerkmeany tbodygyrojerkmeanz  tbodygyrojerkstdx
 Min.   :-0.9855   Min.   :-0.15721   Min.   :-0.07681   Min.   :-0.092500   Min.   :-0.9965  
 1st Qu.:-0.9609   1st Qu.:-0.10322   1st Qu.:-0.04552   1st Qu.:-0.061725   1st Qu.:-0.9800  
 Median :-0.8010   Median :-0.09868   Median :-0.04112   Median :-0.053430   Median :-0.8396  
 Mean   :-0.6164   Mean   :-0.09606   Mean   :-0.04269   Mean   :-0.054802   Mean   :-0.7036  
 3rd Qu.:-0.3106   3rd Qu.:-0.09110   3rd Qu.:-0.03842   3rd Qu.:-0.048985   3rd Qu.:-0.4629  
 Max.   : 0.5649   Max.   :-0.02209   Max.   :-0.01320   Max.   :-0.006941   Max.   : 0.1791  
 tbodygyrojerkstdy tbodygyrojerkstdz tbodyaccmagmean   tbodyaccmagstd    tgravityaccmagmean
 Min.   :-0.9971   Min.   :-0.9954   Min.   :-0.9865   Min.   :-0.9865   Min.   :-0.9865   
 1st Qu.:-0.9832   1st Qu.:-0.9848   1st Qu.:-0.9573   1st Qu.:-0.9430   1st Qu.:-0.9573   
 Median :-0.8942   Median :-0.8610   Median :-0.4829   Median :-0.6074   Median :-0.4829   
 Mean   :-0.7636   Mean   :-0.7096   Mean   :-0.4973   Mean   :-0.5439   Mean   :-0.4973   
 3rd Qu.:-0.5861   3rd Qu.:-0.4741   3rd Qu.:-0.0919   3rd Qu.:-0.2090   3rd Qu.:-0.0919   
 Max.   : 0.2959   Max.   : 0.1932   Max.   : 0.6446   Max.   : 0.4284   Max.   : 0.6446   
 tgravityaccmagstd tbodyaccjerkmagmean tbodyaccjerkmagstd tbodygyromagmean  tbodygyromagstd  
 Min.   :-0.9865   Min.   :-0.9928     Min.   :-0.9946    Min.   :-0.9807   Min.   :-0.9814  
 1st Qu.:-0.9430   1st Qu.:-0.9807     1st Qu.:-0.9765    1st Qu.:-0.9461   1st Qu.:-0.9476  
 Median :-0.6074   Median :-0.8168     Median :-0.8014    Median :-0.6551   Median :-0.7420  
 Mean   :-0.5439   Mean   :-0.6079     Mean   :-0.5842    Mean   :-0.5652   Mean   :-0.6304  
 3rd Qu.:-0.2090   3rd Qu.:-0.2456     3rd Qu.:-0.2173    3rd Qu.:-0.2159   3rd Qu.:-0.3602  
 Max.   : 0.4284   Max.   : 0.4345     Max.   : 0.4506    Max.   : 0.4180   Max.   : 0.3000  
 tbodygyrojerkmagmean tbodygyrojerkmagstd fbodyaccmeanx     fbodyaccmeany      fbodyaccmeanz    
 Min.   :-0.99732     Min.   :-0.9977     Min.   :-0.9952   Min.   :-0.98903   Min.   :-0.9895  
 1st Qu.:-0.98515     1st Qu.:-0.9805     1st Qu.:-0.9787   1st Qu.:-0.95361   1st Qu.:-0.9619  
 Median :-0.86479     Median :-0.8809     Median :-0.7691   Median :-0.59498   Median :-0.7236  
 Mean   :-0.73637     Mean   :-0.7550     Mean   :-0.5758   Mean   :-0.48873   Mean   :-0.6297  
 3rd Qu.:-0.51186     3rd Qu.:-0.5767     3rd Qu.:-0.2174   3rd Qu.:-0.06341   3rd Qu.:-0.3183  
 Max.   : 0.08758     Max.   : 0.2502     Max.   : 0.5370   Max.   : 0.52419   Max.   : 0.2807  
  fbodyaccstdx      fbodyaccstdy       fbodyaccstdz     fbodyaccjerkmeanx fbodyaccjerkmeany
 Min.   :-0.9966   Min.   :-0.99068   Min.   :-0.9872   Min.   :-0.9946   Min.   :-0.9894  
 1st Qu.:-0.9820   1st Qu.:-0.94042   1st Qu.:-0.9459   1st Qu.:-0.9828   1st Qu.:-0.9725  
 Median :-0.7470   Median :-0.51338   Median :-0.6441   Median :-0.8126   Median :-0.7817  
 Mean   :-0.5522   Mean   :-0.48148   Mean   :-0.5824   Mean   :-0.6139   Mean   :-0.5882  
 3rd Qu.:-0.1966   3rd Qu.:-0.07913   3rd Qu.:-0.2655   3rd Qu.:-0.2820   3rd Qu.:-0.1963  
 Max.   : 0.6585   Max.   : 0.56019   Max.   : 0.6871   Max.   : 0.4743   Max.   : 0.2767  
 fbodyaccjerkmeanz fbodyaccjerkstdx  fbodyaccjerkstdy  fbodyaccjerkstdz    fbodygyromeanx   
 Min.   :-0.9920   Min.   :-0.9951   Min.   :-0.9905   Min.   :-0.993108   Min.   :-0.9931  
 1st Qu.:-0.9796   1st Qu.:-0.9847   1st Qu.:-0.9737   1st Qu.:-0.983747   1st Qu.:-0.9697  
 Median :-0.8707   Median :-0.8254   Median :-0.7852   Median :-0.895121   Median :-0.7300  
 Mean   :-0.7144   Mean   :-0.6121   Mean   :-0.5707   Mean   :-0.756489   Mean   :-0.6367  
 3rd Qu.:-0.4697   3rd Qu.:-0.2475   3rd Qu.:-0.1685   3rd Qu.:-0.543787   3rd Qu.:-0.3387  
 Max.   : 0.1578   Max.   : 0.4768   Max.   : 0.3498   Max.   :-0.006236   Max.   : 0.4750  
 fbodygyromeany    fbodygyromeanz    fbodygyrostdx     fbodygyrostdy     fbodygyrostdz    
 Min.   :-0.9940   Min.   :-0.9860   Min.   :-0.9947   Min.   :-0.9944   Min.   :-0.9867  
 1st Qu.:-0.9700   1st Qu.:-0.9624   1st Qu.:-0.9750   1st Qu.:-0.9602   1st Qu.:-0.9643  
 Median :-0.8141   Median :-0.7909   Median :-0.8086   Median :-0.7964   Median :-0.8224  
 Mean   :-0.6767   Mean   :-0.6044   Mean   :-0.7110   Mean   :-0.6454   Mean   :-0.6577  
 3rd Qu.:-0.4458   3rd Qu.:-0.2635   3rd Qu.:-0.4813   3rd Qu.:-0.4154   3rd Qu.:-0.3916  
 Max.   : 0.3288   Max.   : 0.4924   Max.   : 0.1966   Max.   : 0.6462   Max.   : 0.5225  
 fbodyaccmagmean   fbodyaccmagstd    fbodybodyaccjerkmagmean fbodybodyaccjerkmagstd
 Min.   :-0.9868   Min.   :-0.9876   Min.   :-0.9940         Min.   :-0.9944       
 1st Qu.:-0.9560   1st Qu.:-0.9452   1st Qu.:-0.9770         1st Qu.:-0.9752       
 Median :-0.6703   Median :-0.6513   Median :-0.7940         Median :-0.8126       
 Mean   :-0.5365   Mean   :-0.6210   Mean   :-0.5756         Mean   :-0.5992       
 3rd Qu.:-0.1622   3rd Qu.:-0.3654   3rd Qu.:-0.1872         3rd Qu.:-0.2668       
 Max.   : 0.5866   Max.   : 0.1787   Max.   : 0.5384         Max.   : 0.3163       
 fbodybodygyromagmean fbodybodygyromagstd fbodybodygyrojerkmagmean fbodybodygyrojerkmagstd
 Min.   :-0.9865      Min.   :-0.9815     Min.   :-0.9976          Min.   :-0.9976        
 1st Qu.:-0.9616      1st Qu.:-0.9488     1st Qu.:-0.9813          1st Qu.:-0.9802        
 Median :-0.7657      Median :-0.7727     Median :-0.8779          Median :-0.8941        
 Mean   :-0.6671      Mean   :-0.6723     Mean   :-0.7564          Mean   :-0.7715        
 3rd Qu.:-0.4087      3rd Qu.:-0.4277     3rd Qu.:-0.5831          3rd Qu.:-0.6081        
 Max.   : 0.2040      Max.   : 0.2367     Max.   : 0.1466          Max.   : 0.2878     

