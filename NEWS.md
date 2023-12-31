# onsvplot 0.5.1

* Changes `panel.background` to `plot.background`, fixing the plot background color

# onsvplot 0.5.0

Modifies `theme_onsv`. Now this theme is based on `ggplot2::theme_minimal`, with a few changes.

* Fix missing grid coordinates in `geom_sf` maps (#21)

* Fix small legend key size when plotting continuous values (#22)

* Fix title and subtitle position, font size, font color, and font weight (#23, #24)

# onsvplot 0.4.1

* Change values of `legend.key.size` and `legend.text` in `theme_onsv()` (#13 and #14)

# onsvplot 0.4.0

* Add new arguments to `scale_discrete_onsv`: `...`. Now it is possible to pass arguments to lower level `ggplot2` functions, such as `scale_discrete_manual` and `discrete_scale`.

# onsvplot 0.3.2

* Released on [CRAN](https://cran.r-project.org/package=onsvplot): now it is possible to install using `install.packages("onsvplot")`. 

# onsvplot 0.2.2

* Add new parameter to `theme_onsv()` (#7): Now it is possible to change `basesize` of the font used in the plot

# onsvplot 0.2.1

* Add two new parameters to `theme_onsv()` (#3): `plot.title.position = "plot"` and `plot.caption.position = "plot"`.

* Add bottom margin to `title` element.

# onsvplot 0.2.0

* Updates the package name to `onsvplot`. The `obsplot` package already exists, therefore it was necessary to change the previous name. (#4)

* Also, this version changes the function and object names:
  * `theme_obs()` to `theme_onsv()`
  * `scale_discrete_obs()` to `scale_discrete_onsv()`
  * `obs_palette` to `onsv_palette`

# obsplot 0.1.3

* Fix `obs_palette` not loading properly all 12 colors.

# obsplot 0.1.2

* Add new colors to `scale_discrete_obs()` and `obs_palette`, from 6 to 12. (#2)

# obsplot 0.1.1

* Fix windows font warning in `theme_obs()` (#1)

# obsplot 0.1.0

* Initial release.
