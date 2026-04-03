// Main package file for your library code.
// Put public APIs and shared helpers here.
// Keep blocks small and focused for easy refactors.

///|
pub fn rmdir(path : String) -> Unit {
  let exist = @fs.path_exists(path)

  if !exist {
    println("rmdir \{path} not exist")
    return
  }

  let is_dir = @fs.is_dir(path) catch { _ => return }

  if !is_dir {
    println("rmdir \{path} not a dir")
    return
  }

  @fs.remove_dir(path) catch {
    _ => return
  }

  println("rmdir \{path} success")
}

///|
fn main {
  let args = @env.args()
  let dirPath = if args.length() > 1 { args[1] } else { return }
  rmdir(dirPath)
}
