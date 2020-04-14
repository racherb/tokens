HOME_PATH <- getwd()
DATA_PATH <- paste(HOME_PATH, "data", sep = "/")
UTFILE_EN <- paste(DATA_PATH, "utokens_en.tab.gz", sep = "/")
UTFILE_ES <- paste(DATA_PATH, "utokens_es.tab.gz", sep = "/")

loadUniqueTokensDataFrame <- function(language = "en"){
  if(language=="en") {tokens_df <- read.delim(UTFILE_EN)}
  else if (language=="es") {tokens_df <- read.delim(UTFILE_ES)}
  else {stop("There is no data for the defined language")}
  return(tokens_df)
}

utokens_en <- loadUniqueTokensDataFrame("en")
utokens_es <- loadUniqueTokensDataFrame("es")

if(getRversion() >= "2.15.1")  utils::globalVariables(c("loadNamespace", "sparkHome"))

# Set environment variable with Spark's route
setSparkHome <- function(sparkPath = "/usr/local/spark"){
  Sys.setenv(SPARK_HOME = sparkHome)
}

# Loads data as a Spark DataFrame
toSparkDataFrame <- function(language = "en") {
  if (requireNamespace("SparkR", quietly = TRUE)) {
    stop("Package \"StarkR\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
    setSparkHome()
  }
  print("tokens_en.dic")
}



