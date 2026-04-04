// Main package file for your library code.
// Put public APIs and shared helpers here.
// Keep blocks small and focused for easy refactors.

///|
pub fn rmdir(path : String) -> Unit {
  guard @fs.path_exists(path) else {
    println("\{path} not exist")
    return
  }

  let is_dir = @fs.is_dir(path) catch { _ => return }

  guard is_dir else {
    println("\{path} not a dir")
    return
  }

  @fs.remove_dir(path) catch {
    _ => return
  }
}
