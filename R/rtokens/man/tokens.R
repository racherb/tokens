if(getRversion() >= "2.15.1")  utils::globalVariables(c("loadNamespace", "sparkHome"))

# Setea variable de entorno con la ruta de Spark
setSparkHome <- function(sparkPath = "/usr/local/spark"){
  Sys.setenv(SPARK_HOME = sparkHome)
}

# Carga los datos como un DataFrame de Spark
toSdf <- function(language = "en") {
  if (requireNamespace("SparkR", quietly = TRUE)) {
    stop("Package \"StarkR\" needed for this function to work. Please install it.",
         call. = FALSE)
  }
  if (nchar(Sys.getenv("SPARK_HOME")) < 1) {
    setSparkHome()
  }
  print("tokens_en.dic")
}



