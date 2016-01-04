module EventHelper
  def select_color(index=0)
    colors = ['#424242', '#3366CC', '#DC3912', '#FF9900',
              '#109618', '#990099', '#0099C6', '#DD4477',
              '#66AA00', '#B82E2E', '#316395', '#994499',
              '#22AA99', '#AAAA11', '#6633CC', '#E67300',
              '#8B0707', '#651067', '#329262', '#5574a6',
              '#3b3eac', '#b77322', '#16d620', '#b91383',
              '#f4359e', '#9c5935', '#a9c413', '#2a778d',
              '#668d1c', '#bea413', '#0c5922', '#743411']
    if index > colors.length
      return colors[0]
    else
      return colors[index]
    end
  end
end
