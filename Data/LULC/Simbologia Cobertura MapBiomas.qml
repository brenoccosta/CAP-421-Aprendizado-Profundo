<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis styleCategories="Symbology" version="3.40.10-Bratislava">
  <pipe-data-defined-properties>
    <Option type="Map">
      <Option name="name" type="QString" value=""/>
      <Option name="properties"/>
      <Option name="type" type="QString" value="collection"/>
    </Option>
  </pipe-data-defined-properties>
  <pipe>
    <provider>
      <resampling enabled="false" zoomedOutResamplingMethod="nearestNeighbour" maxOversampling="2" zoomedInResamplingMethod="nearestNeighbour"/>
    </provider>
    <rasterrenderer band="1" opacity="1" nodataColor="" alphaBand="-1" type="paletted">
      <rasterTransparency/>
      <minMaxOrigin>
        <limits>None</limits>
        <extent>WholeRaster</extent>
        <statAccuracy>Estimated</statAccuracy>
        <cumulativeCutLower>0.02</cumulativeCutLower>
        <cumulativeCutUpper>0.98</cumulativeCutUpper>
        <stdDevFactor>2</stdDevFactor>
      </minMaxOrigin>
      <colorPalette>
        <paletteEntry alpha="0" label="Vazio" color="#cc2c54" value="0"/>
        <paletteEntry alpha="255" label="Formação florestal" color="#1f8d49" value="3"/>
        <paletteEntry alpha="255" label="Formação savânica" color="#7dc975" value="4"/>
        <paletteEntry alpha="255" label="Mangue" color="#04381d" value="5"/>
        <paletteEntry alpha="255" label="Silvicultura" color="#7a5900" value="9"/>
        <paletteEntry alpha="255" label="Campo Alagado e Área Pantanosa" color="#519799" value="11"/>
        <paletteEntry alpha="255" label="Formação campestre" color="#d6bc74" value="12"/>
        <paletteEntry alpha="255" label="Pastagem" color="#edde8e" value="15"/>
        <paletteEntry alpha="255" label="Cana-de-açúcar" color="#db7093" value="20"/>
        <paletteEntry alpha="255" label="Mosaico de usos" color="#ffefc3" value="21"/>
        <paletteEntry alpha="255" label="Praias, dunas e areal" color="#ffa07a" value="23"/>
        <paletteEntry alpha="255" label="Área urbana" color="#d4271e" value="24"/>
        <paletteEntry alpha="255" label="Outras áreas não vegetadas" color="#db4d4f" value="25"/>
        <paletteEntry alpha="255" label="Afloramento rochoso" color="#ffaa5f" value="29"/>
        <paletteEntry alpha="255" label="Mineração" color="#9c0027" value="30"/>
        <paletteEntry alpha="255" label="Apicum" color="#fc8114" value="32"/>
        <paletteEntry alpha="255" label="Rios, lagos e oceanos" color="#2532e4" value="33"/>
        <paletteEntry alpha="255" label="Soja" color="#f5b3c8" value="39"/>
        <paletteEntry alpha="255" label="Arroz" color="#c71585" value="40"/>
        <paletteEntry alpha="255" label="Outras culturas temporárias" color="#f54ca9" value="41"/>
        <paletteEntry alpha="255" label="Café" color="#d68fe2" value="46"/>
        <paletteEntry alpha="255" label="Cìtricos" color="#9932cc" value="47"/>
        <paletteEntry alpha="255" label="Outras culturas perenes" color="#e6ccff" value="48"/>
        <paletteEntry alpha="255" label="Restinga arbórea" color="#02d659" value="49"/>
        <paletteEntry alpha="255" label="Restinga herbácea" color="#ad5100" value="50"/>
      </colorPalette>
      <colorramp name="[source]" type="randomcolors">
        <Option/>
      </colorramp>
    </rasterrenderer>
    <brightnesscontrast brightness="0" contrast="0" gamma="1"/>
    <huesaturation colorizeRed="255" colorizeGreen="128" saturation="0" grayscaleMode="0" colorizeBlue="128" invertColors="0" colorizeOn="0" colorizeStrength="100"/>
    <rasterresampler maxOversampling="2"/>
    <resamplingStage>resamplingFilter</resamplingStage>
  </pipe>
  <blendMode>0</blendMode>
</qgis>
