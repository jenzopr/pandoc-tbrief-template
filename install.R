# Setup/configure TinyTeX
if (pacman::p_exists("tinytex")) {
  ## Update or install depending presence of the actual TinyTeX
  if (tinytex:::is_tinytex()) tinytex::tlmgr_update()
  if (!tinytex:::is_tinytex()) tinytex::install_tinytex()
  if (!"koma-script" %in% tinytex::tl_pkgs()) tinytex::tlmgr_install(
    "koma-script")
  
  # Install other dependencies
  tinytex::tlmgr_install(c(
    "vmargin",
    "textcase",
    "microtype",
    "mparhack",
    "ragged2e",
    "babel-english",
    "babel-german",
    "eurosym",
    "bookmark"))
}
