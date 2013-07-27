# =================================================
#   Compass Sass Configuration File
#
#     CONFIG REFERENCE: http://bit.ly/mdB26R
# =================================================

# =================================================
#   ASSET STRUCTURE     
# =================================================

  sass_dir         = "sass/"
  css_dir          = "assets/"
  fonts_dir        = "assets/fonts/"
  images_dir       = "assets/img/"
  # DO NOT ADD javascripts_dir statement in this file!!!

# =================================================
#   OUTPUT OPTIONS
#     output_style options:
#       :expanded :nested :compact :compressed
# =================================================

  # $ compass compile -e development --force
  if environment != :production
    output_style = :expanded
    line_comments = false
    # give us all the info
    disable_warnings = false
    sass_options = {:quiet => false}
  end

  # $ compass compile -e production --force
  if environment == :production 
    # keep the build output nice and clean
    output_style = :compressed
    line_comments = false
    # give us all the info
    disable_warnings = false
    sass_options = {:quiet => false}
  end

  # Enable relative paths to assets
  # via compass helper functions:
    relative_assets = true

  # disable the asset cache buster
    asset_cache_buster :none


# =================================================
#   UTILITIES / SUPPORT
# =================================================
  
  on_stylesheet_saved do |filename|
    if File.exists?(filename) 
      a = filename.split('.css')
      s = a[0] + ".scss.liquid"
      puts "copying to: " + s
      FileUtils.cp(filename, s)
      puts "removing: " + filename
    end
  end