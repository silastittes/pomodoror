#' Pomodoror
#'
#'
#' Write more productively with Pomodoror!
#' @param pomodoros Integer value for the number of repetitions.
#' @param work_length Amount of time in minutes to work before a break.
#' @param break_length Amount of time in minutes to break before getting back to work.
#' @param work_start Noise to make to signal beginning of work time.
#' @param work_end Noise to make to signal end of work time/beginning of break time.
#' @export

pomodoror <- function(
  pomodoros = 4,
  work_length = 0.1,
  break_length = 0.1,
  work_start = "mario",
  work_end = "complete"
){
  pomodoros = pomodoros * 60
  work_length = work_length * 60
  break_length = break_length * 60

  for(i in 1:pomodoros){
    beep(sound = work_start)
    print(stringr::str_glue("round {i}: write for: {round(work_length/60, 1)} minutes"))
    Sys.sleep(work_length)
    beep(sound = work_end)
    print(stringr::str_glue("round {i}: break for: {round(break_length/60, 1)} minutes"))
    Sys.sleep(break_length)
  }
}

