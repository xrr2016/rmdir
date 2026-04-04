///|
fn main {
  let args = @env.args()
  let dirPath = if args.length() > 1 { args[1] } else { return }
  @lib.rmdir(dirPath)
}
