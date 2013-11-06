name := "sample"

version := "1.0"

scalaVersion := "2.10.3"

libraryDependencies ++= Seq("org.specs2" %% "specs2" % "2.3.3" % "test",
	"net.databinder.dispatch" %% "dispatch-core" % "0.11.0",
	"joda-time" % "joda-time" % "2.1",
        "org.joda" % "joda-convert" % "1.2",
	"io.spray" %%  "spray-json" % "1.2.5"
)

scalacOptions in Test ++= Seq("-Yrangepos")

resolvers ++= Seq("snapshots", "releases").map(Resolver.sonatypeRepo)
