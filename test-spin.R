#'
#' # Crickets dataset
#'
#' ## Our question: Do crickets chirp more when it is hotter?
#'
#' ### Striped Ground Crickets
#'
#' <img src='http://previews.123rf.com/images/izakowski/izakowski1012/izakowski101200030/8489857-funny-grasshopper-Stock-Vector-cartoon-cricket-grasshopper.jpg' width='400'/>
#'
#' ## What do they sound like?
#' <iframe src="http://player.vimeo.com/video/81114843" height="200" width="680" allowfullscreen="" frameborder="0"></iframe>
#'
#' ## Taking a look at the data
#+ plot-it, include = TRUE
require(ggplot2)
d <- read.table('crickets.csv', sep=',', header=TRUE)

#' ## Taking a look at the data
#+ print-it, include = TRUE
d <- d[1:5, ]
print(d)


#' ## scatterplot of temperature by chirps per second
#+ scatterplot, include = TRUE
ggplot(data=d, aes(x=Chirpspersecond, y=Temperature)) + geom_point() + geom_smooth(method='lm', se=FALSE)

#' ### Are temperature and chirps per second related?
#+ question, include = TRUE
mod <- lm(Temperature ~ Chirpspersecond, data=d)

#' Let's take a look!
#+ load-stargazer, include = F
require(stargazer)

#+ quick-look, include = TRUE, results='asis'
stargazer(mod, type='html')
