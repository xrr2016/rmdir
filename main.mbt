///|
fn get_args() -> Array[String] {
  let args = @env.args()
  if args.length() <= 1 {
    []
  } else {
    args[1:].to_array()
  }
}

///|
fn main {
  let args = get_args()
  let dirPath = if args.length() > 0 { args[0] } else { return }
  @lib.rmdir(dirPath)
  @meow.say("remove dir \{dirPath} success!")
}
