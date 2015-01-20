run_analysis <- function() {

    #整合train数据集
    path <- "UCI HAR Dataset/train/Inertial Signals/"
    body_acc_x_train <- read.table(
        paste(path, "body_acc_x_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_x_train1 <- body_acc_x_train[1]
    for(i in 2:ncol(body_acc_x_train)) {
        body_acc_x_train1 <- rbind(body_acc_x_train1,
                                   data.frame(V1=body_acc_x_train[,i]))
    }
    body_acc_y_train <- read.table(
        paste(path, "body_acc_y_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_y_train1 <- body_acc_y_train[1]
    for(i in 2:ncol(body_acc_y_train)) {
        body_acc_y_train1 <- rbind(body_acc_y_train1,
                                   data.frame(V1=body_acc_y_train[,i]))
    }
    body_acc_z_train <- read.table(
        paste(path, "body_acc_z_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_z_train1 <- body_acc_z_train[1]
    for(i in 2:ncol(body_acc_z_train)) {
        body_acc_z_train1 <- rbind(body_acc_z_train1,
                                   data.frame(V1=body_acc_z_train[,i]))
    }
    
    body_gyro_x_train <- read.table(
        paste(path, "body_gyro_x_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_x_train1 <- body_gyro_x_train[1]
    for(i in 2:ncol(body_gyro_x_train)) {
        body_gyro_x_train1 <- rbind(body_gyro_x_train1,
                                   data.frame(V1=body_gyro_x_train[,i]))
    }
    body_gyro_y_train <- read.table(
        paste(path, "body_gyro_y_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_y_train1 <- body_gyro_y_train[1]
    for(i in 2:ncol(body_gyro_y_train)) {
        body_gyro_y_train1 <- rbind(body_gyro_y_train1,
                                    data.frame(V1=body_gyro_y_train[,i]))
    }
    body_gyro_z_train <- read.table(
        paste(path, "body_gyro_z_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_z_train1 <- body_gyro_z_train[1]
    for(i in 2:ncol(body_gyro_z_train)) {
        body_gyro_z_train1 <- rbind(body_gyro_z_train1,
                                    data.frame(V1=body_gyro_z_train[,i]))
    }
    
    total_acc_x_train <- read.table(
        paste(path, "total_acc_x_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_x_train1 <- total_acc_x_train[1]
    for(i in 2:ncol(total_acc_x_train)) {
        total_acc_x_train1 <- rbind(total_acc_x_train1,
                                    data.frame(V1=total_acc_x_train[,i]))
    }
    total_acc_y_train <- read.table(
        paste(path, "total_acc_y_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_y_train1 <- total_acc_y_train[1]
    for(i in 2:ncol(total_acc_y_train)) {
        total_acc_y_train1 <- rbind(total_acc_y_train1,
                                    data.frame(V1=total_acc_y_train[,i]))
    }
    total_acc_z_train <- read.table(
        paste(path, "total_acc_z_train.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_z_train1 <- total_acc_z_train[1]
    for(i in 2:ncol(total_acc_z_train)) {
        total_acc_z_train1 <- rbind(total_acc_z_train1,
                                    data.frame(V1=total_acc_z_train[,i]))
    }
    
    trainsets <- data.frame(x1=body_acc_x_train1, 
                            y1=body_acc_y_train1,
                            z1=body_acc_z_train1,
                            x2=body_gyro_x_train1,
                            y2=body_gyro_y_train1,
                            z2=body_gyro_z_train1,
                            x3=total_acc_x_train1,
                            y3=total_acc_y_train1,
                            z3=total_acc_z_train1)
    
    
    
    #整合test数据集
    pathtest <- "UCI HAR Dataset/test/Inertial Signals/"
    body_acc_x_test <- read.table(
        paste(pathtest, "body_acc_x_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_x_test1 <- body_acc_x_test[1]
    for(i in 2:ncol(body_acc_x_test)) {
        body_acc_x_test1 <- rbind(body_acc_x_test1,
                                   data.frame(V1=body_acc_x_test[,i]))
    }
    body_acc_y_test <- read.table(
        paste(pathtest, "body_acc_y_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_y_test1 <- body_acc_y_test[1]
    for(i in 2:ncol(body_acc_y_test)) {
        body_acc_y_test1 <- rbind(body_acc_y_test1,
                                   data.frame(V1=body_acc_y_test[,i]))
    }
    body_acc_z_test <- read.table(
        paste(pathtest, "body_acc_z_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_acc_z_test1 <- body_acc_z_test[1]
    for(i in 2:ncol(body_acc_z_test)) {
        body_acc_z_test1 <- rbind(body_acc_z_test1,
                                   data.frame(V1=body_acc_z_test[,i]))
    }
    
    body_gyro_x_test <- read.table(
        paste(pathtest, "body_gyro_x_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_x_test1 <- body_gyro_x_test[1]
    for(i in 2:ncol(body_gyro_x_test)) {
        body_gyro_x_test1 <- rbind(body_gyro_x_test1,
                                    data.frame(V1=body_gyro_x_test[,i]))
    }
    body_gyro_y_test <- read.table(
        paste(pathtest, "body_gyro_y_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_y_test1 <- body_gyro_y_test[1]
    for(i in 2:ncol(body_gyro_y_test)) {
        body_gyro_y_test1 <- rbind(body_gyro_y_test1,
                                    data.frame(V1=body_gyro_y_test[,i]))
    }
    body_gyro_z_test <- read.table(
        paste(pathtest, "body_gyro_z_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    body_gyro_z_test1 <- body_gyro_z_test[1]
    for(i in 2:ncol(body_gyro_z_test)) {
        body_gyro_z_test1 <- rbind(body_gyro_z_test1,
                                    data.frame(V1=body_gyro_z_test[,i]))
    }
    
    total_acc_x_test <- read.table(
        paste(pathtest, "total_acc_x_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_x_test1 <- total_acc_x_test[1]
    for(i in 2:ncol(total_acc_x_test)) {
        total_acc_x_test1 <- rbind(total_acc_x_test1,
                                    data.frame(V1=total_acc_x_test[,i]))
    }
    total_acc_y_test <- read.table(
        paste(pathtest, "total_acc_y_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_y_test1 <- total_acc_y_test[1]
    for(i in 2:ncol(total_acc_y_test)) {
        total_acc_y_test1 <- rbind(total_acc_y_test1,
                                    data.frame(V1=total_acc_y_test[,i]))
    }
    total_acc_z_test <- read.table(
        paste(pathtest, "total_acc_z_test.txt" , sep=""), #文件名称
        sep="" #分隔符
    )
    total_acc_z_test1 <- total_acc_z_test[1]
    for(i in 2:ncol(total_acc_z_test)) {
        total_acc_z_test1 <- rbind(total_acc_z_test1,
                                    data.frame(V1=total_acc_z_test[,i]))
    }
    
    testsets <- data.frame(x1=body_acc_x_test1, 
                            y1=body_acc_y_test1,
                            z1=body_acc_z_test1,
                            x2=body_gyro_x_test1,
                            y2=body_gyro_y_test1,
                            z2=body_gyro_z_test1,
                            x3=total_acc_x_test1,
                            y3=total_acc_y_test1,
                            z3=total_acc_z_test1)
    
    
    #1.整合培训和测试集，创建一个数据集。
    sets <- rbind(trainsets, testsets)
    
    #3.使用描述性活动名称命名数据集中的活动
    activity1 <- sample(c("test"), size=nrow(testsets), replace=TRUE)
    activity2 <- sample(c("train"), size=nrow(trainsets), replace=TRUE)
    activity <- rbind(data.frame(activity=activity2),
                      data.frame(activity=activity1))
    sets1 <- cbind(sets, activity)
    
    #4.使用描述性变量名称恰当标记数据集。
    sets2 <- data.frame(acc_x=sets1[,1],
                        acc_y=sets1[,2],
                        acc_z=sets1[,3],
                        gyro_x=sets1[,4],
                        gyro_y=sets1[,5],
                        gyro_z=sets1[,6],
                        total_x=sets1[,7],
                        total_y=sets1[,8],
                        total_z=sets1[,9],
                        activity=sets1[,10])
    
    #2.仅提取测量的平均值以及每次测量的标准差。
    mean_acc_x <- tapply(sets2$acc_x, sets2$activity, mean)
    mean_acc_y <- tapply(sets2$acc_y, sets2$activity, mean)
    mean_acc_z <- tapply(sets2$acc_y, sets2$activity, mean)
    mean_gyro_x <- tapply(sets2$gyro_x, sets2$activity, mean)
    mean_gyro_y <- tapply(sets2$gyro_y, sets2$activity, mean)
    mean_gyro_z <- tapply(sets2$gyro_z, sets2$activity, mean)
    mean_total_x <- tapply(sets2$total_x, sets2$activity, mean)
    mean_total_y <- tapply(sets2$total_y, sets2$activity, mean)
    mean_total_z <- tapply(sets2$total_z, sets2$activity, mean)

    sd_acc_x <- tapply(sets2$acc_x, sets2$activity, sd)
    sd_acc_y <- tapply(sets2$acc_y, sets2$activity, sd)
    sd_acc_z <- tapply(sets2$acc_y, sets2$activity, sd)
    sd_gyro_x <- tapply(sets2$gyro_x, sets2$activity, sd)
    sd_gyro_y <- tapply(sets2$gyro_y, sets2$activity, sd)
    sd_gyro_z <- tapply(sets2$gyro_z, sets2$activity, sd)
    sd_total_x <- tapply(sets2$total_x, sets2$activity, sd)
    sd_total_y <- tapply(sets2$total_y, sets2$activity, sd)
    sd_total_z <- tapply(sets2$total_z, sets2$activity, sd)
    
    #5.从第4步的数据集中，
    #针对每个活动和每个主题使用每个表里的平均值建立第2个独立的整洁数据集。
    meanset <- cbind(as.data.frame(mean_acc_x),
                     as.data.frame(mean_acc_y),
                     as.data.frame(mean_acc_z),
                     as.data.frame(mean_gyro_x),
                     as.data.frame(mean_gyro_y),
                     as.data.frame(mean_gyro_z),
                     as.data.frame(mean_total_x),
                     as.data.frame(mean_total_y),
                     as.data.frame(mean_total_z)
    )
    
    write.table(sets2,file="result.txt", row.names=FALSE)
}