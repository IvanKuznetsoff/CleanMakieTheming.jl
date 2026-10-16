module CleanMakieTheming
    using Makie
    using ColorSchemes
    function theme_sans(; fontsize=12, font="Helvetica", colormap=:winter)
        Theme(
            font     = font,
            fontsize = fontsize,
            colormap = colormap,

            palette = (color = Makie.wong_colors(),),

            Axis = (
                backgroundcolor   = :white,
                xgridvisible      = false,
                ygridvisible      = false,
                xminorgridvisible = false,
                yminorgridvisible = false,
                xlabelsize        = fontsize,
                ylabelsize        = fontsize,
                xticklabelsize    = fontsize,
                yticklabelsize    = fontsize,
                titlesize         = fontsize + 1,
                xtickalign        = 0.0,
                ytickalign        = 0.0,
                xticksize         = 6,
                yticksize         = 6,
                topspinevisible   = true,
                rightspinevisible = true,
            ),

            Legend = (
                framevisible = true,
                labelsize    = fontsize,
                framewidth   = 0.5,
            ),

            Colorbar = (
                labelsize     = fontsize,
                ticklabelsize = fontsize,
            ),

            Lines = (
                linewidth = 1.0,
            ),

            Scatter = (
                color       = (:white, 0),
                cycle       = [:strokecolor => :color],
                strokewidth = 1,
                markersize  = 9,
            ),
        )
    end
    function theme_times(; fontsize=12)
        Theme(
            fonts = (
                regular     = "Times New Roman",
                bold        = "Times New Roman Bold",
                italic      = "Times New Roman Italic",
                bold_italic = "Times New Roman Bold Italic",
            ),        # or "CMU Serif", "Latin Modern Roman", etc.
            fontsize = fontsize,

            # Still use a sensible palette; you can override per-plot if you want pure black
            palette = (color = Makie.wong_colors(),),

            Axis = (
                backgroundcolor    = :white,

                # No grid lines by default (APS style is usually gridless)
                xgridvisible       = false,
                ygridvisible       = false,
                xminorgridvisible  = false,
                yminorgridvisible  = false,

                # Label / tick sizes
                xlabelsize         = fontsize,
                ylabelsize         = fontsize,
                xticklabelsize     = fontsize,
                yticklabelsize     = fontsize,
                titlesize          = fontsize + 1,

                # Box around the plot: all spines visible
                topspinevisible    = true,
                rightspinevisible  = true,
                # left/bottom remain true by default

                # Inward ticks, a bit shorter than Nature theme
                xtickalign         = 1.0,  # 0 = out, 1 = in
                ytickalign         = 1.0,
                xticksize          = 4,
                yticksize          = 4,
                xtickwidth         = 1.0,
                ytickwidth         = 1.0,
            ),

            Legend = (
                framevisible       = true,
                labelsize          = fontsize,
            ),

            Colorbar = (
                labelsize          = fontsize,
                ticklabelsize      = fontsize,
            ),

            Lines = (
                linewidth          = 1.2,   # slightly heavier, good for print
            ),

            Scatter=(
                color=(:white, 0),
                cycle=[:strokecolor => :color],
                #        strokecolor = :blue,
                strokewidth=1,
                markersize=9
            ),
        )
    end
    
    export theme_sans, theme_times
end # module CleanMakieTheming
