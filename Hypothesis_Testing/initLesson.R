# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

.get_course_path <- function(){
  tryCatch(swirl:::swirl_courses_dir(),
           error = function(c) {file.path(find.package("swirl"),"Courses")}
  )
}

late_shipments <- read.fst(file.path(.get_course_path(), "Statistics_Using_R", "Hypothesis_Testing", "late_shipments.fst"))
late_shipments_boot_distn <- read.fst(file.path(.get_course_path(), "Statistics_Using_R", "Hypothesis_Testing", "late_ship_boot_distn.fst"))
dem_county_pres_joined <- read.fst(file.path(.get_course_path(), "Statistics_Using_R", "Hypothesis_Testing", "dem_county_pres_joined.fst"))

colnames(late_shipments_boot_distn) <- c("replicate", "late_prop")