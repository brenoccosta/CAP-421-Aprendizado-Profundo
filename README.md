# CAP-421-Aprendizado-Profundo
Repositório pessoal para entrega da atividade do curso de Aprendizado Profundo do curso de Pós-Graduação em Computação Aplicada (PGCAP) do Instituto Nacional de Pesquisas Espaciais (INPE).

> Autores: Breno Coltro da Costa, Valdivino Alexandre de Santiago Júnior, Élcio Hideiti Shiguemori, Thales Sehn Körting. 12/12/2025, São José dos Campos - SP.

Este repoistório está organizado na seguinte maneira:

```
-- ./*.ipynb
|- Model/*.pth
|- Log/*.txt
|- Data/
 \- */*.shp
 |- LULC/*.tif
 |- Images/
  \- Data Cubes/[Train, Test, Val]/Data_Cube_[\d+].zarr
  |-Latent Patches/*.tif
  |-Latent Mosaic/Latent Mosaic.tif
  [pastas excluídas abaixo]
  |-Items/[Tile]/[Date]/[Asset].tif
  |-Tiles/[Tile]/[Date]/Tile.tif
  |-Mosaics/[Date]/Mosaic.tif
  |-Patches/[Date]/Patch_[\d+].tif
```

No entanto, `./Data/Images/` está vazio e os dados devem ser baixados a partir do [repositório oficial da base de dados pelo Kaggle](https://www.kaggle.com/datasets/brenocoltrodacosta/vale-do-ribeira).

# Notebooks
Todos os notebooks cumprem uma função muito específica que faz jus ao seu nome. Também possuem _logs_ que saem na tela do usuário monitorando a atividade desempenhada. Possuem poucos comentários, mas as variáveis e a estrutura limpa do código facilitam em muito a legibilidade.

## Create NDMI
Código para criar a banda NDMI, não disponível nativa para _download_ pelo STAC do INPE.

> Input: `./Data/Images/Items/[Tile]/[Date]/[B08, B11].tif`
>
> Output: `./Data/Images/Items/[Tile]/[Date]/NDMI.tif`

## Data Cubes
Código para juntar os _patches_ de tamanho (7, N, M) e criar uma única série temporal, do tipo (7, 23, N, M).

> Input: `./Data/Images/Patches/[Date]/Patch_[\d+].tif`
>
> Output: `./Data/Images/Data Cubes/Data_Cube_[\d+].zarr`

## Data Retrieval
Código para acessar a base de dados STAC do INPE e baixar dos cubos de dados Sentinel-2 para o ano de 2023 as bandas B02 (Azul), B03 (Verde), B04 (Vermelho), B08 (NIR), B11 (SWIR) e EVI.

> Input: nenhum.
>
> Output: `./Data/Images/Items/[Tile]/[Date]/[Asset].tif`

> Nota: B08 e B11 foram baixadas em outra máquina por razões de instabilidade de rede, por isso vide `Data Transfer`.

## Data Transfer
Código para transferir as imagens baixadas em outra máquina para a máquina-sede.

> Obsoleto.

## Join Files
Código para unir os diversos _assets_ dos itens em uma única iamgem. Devido à forma pela qual foram acessados pelo STAC, cada asset foi escrito em um arquivo separado. Este código faz a junção de todas as bandas, transformando 7 imagens (N, M) em uma (7, N, M).

> Input: `./Data/Images/Items/[Tile]/[Date]/[Asset].tif`
>
> Output: `./Data/Images/Tiles/[Tile]/[Date]/Tile.tif`

## Mosaics
Código para unir todos os _tiles_ da área de interesse em um único arquivo, facilitando o processamento dos _patches_ que viria em seguida.

> Input: `./Data/Images/Tiles/[Tile]/[Date]/Tile.tif`
>
> Output: `./Data/Images/Mosaics/[Date]/Mosaic.tif`

## Patch Maker
Código para ler cada mosaico e extrair um _patch_ a partir de uma grade (`./Data/Grid/Grid.shp`).

> Inputs: `./Data/Images/Mosaics/[Date]/Mosaic.tif`; `./Data/Grid/Grid.shp`
>
> Output: `./Data/Images/Patches/[Date]/Patch_[\d+].tif`

## Remove Files
Código para remover a banda NDVI, que foi substituída pelo EVI.

> Obsoleto.

## Train Test Split
Código para separar os cubos de dados em pastas diferentes de treino, validação e teste.

> Log: _ids_ dos cubos de cada conjunto em `./Log/Train Test Split.txt`.

> Input: `./Data/Images/Data Cubes/Data_Cube_[\d+].zarr`
>
> Output: `./Data/Images/Data Cubes/[Train, Test, Val]/Data_Cube_[\d+].zarr`