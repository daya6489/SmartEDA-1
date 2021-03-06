% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fn_exp_categorical_viz.R
\name{ExpCatViz}
\alias{ExpCatViz}
\title{Distributions of categorical variables}
\usage{
ExpCatViz(data,gp=NULL,fname=NULL,clim=10,col=NULL,
margin=1,Page=NULL,Flip=F,sample=NULL,rdata=FALSE,value=NULL)
}
\arguments{
\item{data}{dataframe or matrix}

\item{gp}{target variable. This is not a mandatory field.}

\item{fname}{output file name. Output will be generated in PDF format}

\item{clim}{maximum categories to be considered to include in bar graphs.}

\item{col}{define the colors to fill the bars, default it will take sample colours.}

\item{margin}{index, 1 for row based proportions and 2 for column based proportions}

\item{Page}{output pattern. if Page=c(3,2), It will generate 6 plots with 3 rows and 2 columns}

\item{Flip}{default vertical bars. It will be used to flip the axis vertical to horizontal}

\item{sample}{random selection of categorical variable}

\item{rdata}{to plot bar graph for frequency/aggregated table}

\item{value}{value coloumn name. This is mandatory if 'rdata' is TRUE}
}
\value{
This function returns collated graphs in grid format in PDF or JPEG format. All the files will be stored in the working directory

Bar graph - for raw data(this function will dynamically pick all the categorical variable and plot the bar chart)

Bar graph - aggregated data

Stacked Bar graph by target variable
}
\description{
This function automatically scans through each variable and creates bar plot for categorical variable.
}
\examples{
ExpCatViz(data=mtcars,gp=NULL,fname=file.path(tempdir(),"Cat_1"),clim=10,margin=1,Page = c(2,2))
## Generate Bar graph for all the descrete data with column based proportions - random colors
set.seed(1234)
ExpCatViz(data=mtcars,gp="gear",fname=file.path(tempdir(),"Cat_2"),clim=10,margin=2,Page = c(2,2))
## Bar graph for specified variable
mtdata <- mtcars
mtdata$carname <- rownames(mtcars)
ExpCatViz(data=mtdata,gp="carname",col="blue",rdata=TRUE,value="mpg")
}
\seealso{
\code{\link[ggplot2:geom_bar]{geom_bar}}
}
