#' Pomodoror
#'
#'
#' Write more productively with Pomodoror!
#' @param pomodoros Integer value for the number of repetitions.
#' @param work_length Amount of time in minutes to work before a break.
#' @param break_length Amount of time in minutes to break before getting back to work.
#' @param work_start Noise to make to signal beginning of work time.
#' @param work_end Noise to make to signal end of work time/beginning of break time.
#' @param work_finish Noise to make at after all pomodoros are completed.
#' @export

pomodoror <- function(
  pomodoros = 4,
  work_length = 0.1,
  break_length = 0.1,
  work_start = "mario",
  work_end = "complete",
  work_finish = "fanfare"
){
  pomodoros = pomodoros
  work_length = work_length * 60
  break_length = break_length * 60

  for(i in 1:pomodoros){
    beepr::beep(sound = work_start)
    print(stringr::str_glue("round {i}: write for: {round(work_length/60, 1)} minutes"))
    Sys.sleep(work_length)

    if(i == pomodoros){
      beepr::beep(sound = work_finish)
    } else{
      beepr::beep(sound = work_end)
      print(stringr::str_glue("round {i}: break for: {round(break_length/60, 1)} minutes"))
      Sys.sleep(break_length)
    }
  }
}

