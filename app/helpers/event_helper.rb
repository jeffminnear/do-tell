module EventHelper
  # The colors used by Google Charts
  # The last color is placed at index 0
  # to allow for "modulo wrapping"
  COLORS = ['#743411', '#3366CC', '#DC3912', '#FF9900',
            '#109618', '#990099', '#0099C6', '#DD4477',
            '#66AA00', '#B82E2E', '#316395', '#994499',
            '#22AA99', '#AAAA11', '#6633CC', '#E67300',
            '#8B0707', '#651067', '#329262', '#5574a6',
            '#3b3eac', '#b77322', '#16d620', '#b91383',
            '#f4359e', '#9c5935', '#a9c413', '#2a778d',
            '#668d1c', '#bea413', '#0c5922']

  HIGHEST_COLOR_VALUE = COLORS.length

  def select_color(index=rand(1..COLORS.length))
    COLORS[index % HIGHEST_COLOR_VALUE]
  end
end
