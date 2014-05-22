import play.Project._

name := "computer-database"

version := "1.0"

libraryDependencies ++= Seq(
  javaJdbc,
  javaEbean,
  "org.postgresql" % "postgresql" % "9.2-1003-jdbc4"
)

playJavaSettings
