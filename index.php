<!DOCTYPE html>
<html>
    <head>
        <title>Catalogue of World Pterophoroidea</title>
        <meta charset="UTF-8">
        <meta name="description" content="Catalogue of World Pterophoroidea">
        <meta name="keywords" content="Pterophoroidea, plume moths, Pterophoridae, Macropiratidae, Catalogue, Checklist, Global">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/CatalogueOfLife/portal-components/umd/main.css?version=1.2.0">
        <link rel="stylesheet" href="/css/catalogue.css?version=1.11">
        <script src="https://kit.fontawesome.com/9dcb058c00.js" crossorigin="anonymous"></script>
        <script src="https://unpkg.com/react@16/umd/react.production.min.js" ></script>
        <script src="https://unpkg.com/react-dom@16/umd/react-dom.production.min.js" ></script>
        <script src="https://cdn.jsdelivr.net/gh/CatalogueOfLife/portal-components/umd/col-browser.min.js?version=1.2.0" ></script>
    </head>
    <body>
        <header>
            <nav id="navbar">
                <div class="site-name">
                    <a href="/"><img src="/img/Amblyptilia_aeolodes.png">Catalogue of World Pterophoroidea</a>
                </div>
                <div class="site-menu">
                    <div class="site-menu-item">
                        <a href="https://alucitoidea.hobern.net/">World Alucitoidea<img src="/img/Alucita_hexadactyla.png"></a>
                    </div>
                    <div class="site-menu-item">
                        <a href="https://stangeia.hobern.net/">Biodiversity and informatics<img src="/img/Drepanacra_binocula.png"></a>
                    </div>
                    <div class="site-menu-item">
                        <a href="https://hobern.net/index.html">Home<img src="/img/Kiwaia_jeanae.png"></a>
                    </div>
                </div>
            </nav>
        </header>
        
        <div class="Overview">
            <h2>Catalogue of the Pterophoroidea of the World, version 1.1.22.189 (08 Jul 2022)</h2>
            
            <ul>
            <li><a href="catalogue.php"><strong>Browse the catalogue</strong></a></li>
            <li><a href="Pterophoroidea.zip"><strong>Download the catalogue as a ZIP file</strong></a> (<a href="https://github.com/CatalogueOfLife/coldp">COLDP format)</a></li>
            <li><a href="https://data.catalogue.life/dataset/1199/classification" target="_blank"><strong>View the catalogue in Catalogue of Life ChecklistBank</strong></a></li>
            </ul>

            <p>
            This digital catalogue for the Pterophoroidea of the world is 
            derived from C. Gielis (2003) <strong><a href="https://www.researchgate.net/publication/270723918" target="_blank">Pterophoroidea & 
            Alucitoidea (Lepidoptera)</a></strong> (<em>World Catalogue of 
            Insects</em>, volume 4), as subsequently maintained and updated 
            by Cees Gielis. The data have been curated for inclusion in the 
            <a href="http://www.catalogueoflife.org/" target="_blank">
            <strong>Catalogue of Life</strong></a> and updated by Donald Hobern.</p> 
            
            <p>Version 1.1.22.189 has been updated to correct a number of errors in 
            processing of Cees Gielis' original dataset and to reflect recent 
            additions to the group. Additional page references have also been 
            added.</p>
            
            <p>The Macropiratidae are included here (as in Gielis, 2003) as
            a sister family to the Pterophoridae. This is not supported by 
            recent research, but no proposed alternative position has yet been 
            published.</p>
            
            <p>Comments, corrections and additions are always welcome. Please 
            use <strong><a href="https://stangeia.hobern.net/about/">the 
            contact form</a></strong> on my blog.</p>
            
            <p>Use the search and browse tool below to access information on
            any name or species, or go directly to the full 
            <strong><a href="catalogue.php">Catalogue</a></strong>.</p>

            <br>

            <h4>Acknowledgements</h4>

            <p>Cees Gielis is responsible for most of the hard work in originally
            gathering and curating the content for this Catalogue.</p>

            <p>The catalogue search and browse tool used on this page is an
            open source component developed by the Catalogue of Life available from their Github 
            <strong><a href="https://github.com/CatalogueOfLife">CatalogueOfLife</a>&nbsp;/&nbsp;<a href="https://github.com/CatalogueOfLife/portal-components">portal-components</a></strong> 
            repository.</p>
            
        </div>
      
        <div class="Search">
            <div id="tree"></div>
        </div>

        <script >
        'use strict';
        const e = React.createElement;
        class Tree extends React.Component {

            render() {

              return e(
                ColBrowser.Tree,
                { catalogueKey: 1199 , pathToTaxon: 'catalogue.php#taxon-', pathToDataset: '/sourcedatasets/', defaultTaxonKey: 5 }
              );
            }
          };

        const domContainer = document.querySelector('#tree');
        ReactDOM.render(e(Tree), domContainer);
        </script>

        <div class="footer">
            <div class="cc-logo"><a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a>&nbsp;All content offered under <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Attribution 4.0 International License</a>, Donald Hobern, <?php echo date("Y"); ?>.</div>
        </div>
        
    </body>
</html>
