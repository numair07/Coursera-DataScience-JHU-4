NEI <- readRDS("summarySCC_PM25.rds")
##SCC <- readRDS("Source_Classification_Code.rds")
##head(NEI)
agg <- aggregate(NEI$Emissions, by=list(NEI$year), sum)
##agg
names(agg) <- c("Year", "Emissions")
png("plot1(2).png", height=480, width=480)
barplot(agg$Emissions, agg$Year, names.arg=agg$Year,xlab="Years", ylab="Total PM 2.5 Emissions", main="Total PM 2.5 Emissions in the United States")
dev.off()