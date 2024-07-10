#Librerías
library(showtext)

#Fuentes en la web
try({font_add_google(name = "Recursive", family = "Recursive Regular")})
try({font_add_google(name = "Recursive", family = "Recursive Black")})
try({font_add_google(name = "Work Sans", family = "Work Sans Light")})
try({font_add_google(name = "Work Sans", family = "Work Sans")})
try({font_add_google(name = "Fira Sans", family = "Fira Sans")})
try({font_add_google(name = "Courier Prime", family = "Courier")})
try({font_add_google(name = "Aldrich", family = "Aldrich")})
try({font_add_google(name = "M PLUS 1p", family = "M+ 1p")})
try({font_add_google(name = "Roboto", family = "Roboto")})
try({font_add_google(name = "Roboto", family = "Roboto Regular")})
try({font_add_google(name = "Roboto Condensed", family = "Roboto Condensed")})
try({font_add_google(name = "Roboto Mono", family = "Roboto Mono")})
try({font_add_google(name = "Roboto Slab", family = "Roboto Slab")})
try({font_add_google(name = "Roboto Serif", family = "Roboto Serif")})
try({font_add_google(name = "Public Sans", family = "Public Sans")})
try({font_add_google(name = "Public Sans", family = "Public Sans Light")})
try({font_add_google(name = "IBM Plex Sans", family = "IBMPlexSans")})
try({font_add_google(name = "Titillium Web", family = "Titillium Web")})
try({font_add_google(name = "Homemade Apple", family = "Homemade Apple")})
try({font_add_google(name = "Lato", family = "lato")})
try({font_add_google(name = "Lato", family = "Lato")})
try({font_add_google(name = "Inter", family = "Inter")})
try({font_add_google(name = "Chelsea Market", family = "Chelsea Market")})
try({font_add_google(name = "Cairo", family = "Cairo")})
try({font_add_google(name = "IM Fell English", family = "IM Fell English")})
try({font_add_google(name = "Sansita Swashed", family = "Sansita Swashed")})
try({font_add_google(name = "Permanent Marker", family = "Permanent Marker")})
try({font_add_google(name = "Cinzel", family = "Cinzel")})
try({font_add_google(name = "Philosopher", family = "Philosopher")})
try({font_add_google(name = "Henny Penny", family = "Henny Penny")})
try({font_add_google(name = "MedievalSharp", family = "MedievalSharp")})
try({font_add_google(name = "Rock Salt", family = "Rock Salt")})
try({font_add_google(name = "Bangers", family = "Bangers")})
try({font_add_google(name = "Russo One", family = "Russo One")})
try({font_add_google(name = "Orbitron", family = "Orbitron")})
try({font_add_google(name = "Spectral SC", family = "Spectral SC")})
try({font_add_google(name = "Limelight", family = "Limelight")})
try({font_add_google(name = "Bungee", family = "Bungee")})
try({font_add_google(name = "Bungee Shade", family = "Bungee Shade")})
try({font_add_google(name = "Montserrat Subrayada", family = "Montserrat Subrayada")})
try({font_add_google(name = "Lobster", family = "Lobster")})
try({font_add_google(name = "Bowlby One SC", family = "Bowlby One SC")})
try({font_add_google(name = "Mr De Haviland", family = "Mr De Haviland")})
try({font_add_google(name = "Marck Script", family = "Marck Script")})
try({font_add_google(name = "Mr Bedfort", family = "Mr. Bedfort")})
try({font_add_google(name = "Source Sans 3", family = "Source Sans 3")})

#Ruta de las fuentes
font_paths("www/fonts")

#Cargar fuentes
try({
  font_paths("www/fonts/Roboto-Bold.ttf")
  font_add("Roboto Bold", regular = "Roboto-Bold.ttf",
           bold = "Roboto-Bold.ttf")
})

try({
  font_paths("www/fonts/Roboto-Italic.ttf")
  font_add("Roboto Italic", regular = "Roboto-Italic.ttf",
           italic = "Roboto-Italic.ttf")
})

try({
  font_paths("www/fonts/Roboto-Light.ttf")
  font_add("Roboto Light", regular = "Roboto-Light.ttf")
})

try({
  font_paths("www/fonts/Helvetica.ttf")
  font_paths("www/fonts/Helvetica-Bold.ttf")
  font_add("Helvetica", regular = "Helvetica.ttf",
           bold = "Helvetica-Bold.ttf")
})

try({
  font_paths("www/fonts/verdana.ttf")
  font_paths("www/fonts/verdana-bold.ttf")
  font_paths("www/fonts/verdana-bold-italic.ttf")
  font_add("Verdana", regular = "verdana.ttf",
           bold = "verdana-bold.ttf",
           bolditalic = "verdana-bold-italic.ttf")
})

try({
  font_paths("www/fonts/ARIAL.TTF")
  font_paths("www/fonts/ARIALBD.TTF")
  font_paths("www/fonts/ARIALBI.TTF")
  font_paths("www/fonts/ARIALI.TTF")
  font_add("Arial", regular = "ARIAL.TTF",
           bold = "ARIALBD.TTF",
           italic =  "ARIALI.TTF",
           bolditalic = "ARIALBI.TTF")
})

try({
  font_paths("www/fonts/times new roman.ttf")
  font_paths("www/fonts/times new roman bold.ttf")
  font_paths("www/fonts/times new roman italic.ttf")
  font_paths("www/fonts/times new roman bold italic.ttf")
  font_add("Times New Roman", regular = "times new roman.ttf",
           bold = "times new roman bold.ttf",
           italic =  "times new roman italic.ttf",
           bolditalic = "times new roman bold italic.ttf")
})

try({
  font_paths("www/fonts/times new roman.ttf")
  font_paths("www/fonts/times new roman bold.ttf")
  font_paths("www/fonts/times new roman italic.ttf")
  font_paths("www/fonts/times new roman bold italic.ttf")
  font_add("Times", regular = "times new roman.ttf",
           bold = "times new roman bold.ttf",
           italic =  "times new roman italic.ttf",
           bolditalic = "times new roman bold italic.ttf")
})

try({
  font_paths("www/fonts/times new roman.ttf")
  font_paths("www/fonts/times new roman bold.ttf")
  font_paths("www/fonts/times new roman italic.ttf")
  font_paths("www/fonts/times new roman bold italic.ttf")
  font_add("Times New Roman", regular = "times new roman.ttf",
           bold = "times new roman bold.ttf",
           italic =  "times new roman italic.ttf",
           bolditalic = "times new roman bold italic.ttf")
})

try({
  font_paths("www/fonts/Geneva Regular.ttf")
  font_paths("www/fonts/Geneva Bold-Italic.ttf")
  font_add("Geneva", regular = "Geneva Regular.ttf",
           bolditalic = "Geneva Bold-Italic.ttf")
})

try({
  font_paths("www/fonts/SauceCodeProNerdFont-Regular.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-Italic.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-Bold.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-BoldItalic.ttf")
  font_add("SauceCode Pro Nerd Font", regular = "SauceCodeProNerdFont-Regular.ttf",
           bold = "SauceCodeProNerdFont-Bold.ttf",
           italic =  "SauceCodeProNerdFont-Italic.ttf",
           bolditalic = "SauceCodeProNerdFont-BoldItalic.ttf")
})

try({font_paths("www/fonts/Aljazeera.ttf")
  font_add("Aljazeera", regular = "www/fonts/Aljazeera.ttf")
})

try({font_paths("www/fonts/zangar.ttf")
  font_paths("www/fonts/A.Zangar.Hamshahri.Bold.ttf")
  font_add("Zangar", regular = "www/fonts/zangar.ttf",
           bold = "A.Zangar.Hamshahri.Bold.ttf")})

try({font_paths("www/fonts/ARooznameh.ttf")
  font_add("A Rooznameh", regular = "www/fonts/ARooznameh.ttf")})

try({font_paths("www/fonts/Nahid-FD.ttf")
  font_add("Nahid FD", regular = "www/fonts/Nahid-FD.ttf")})

try({font_paths("www/fonts/Nika-Regular.ttf")
  font_add("Nika-Regular", regular = "www/fonts/Nika-Regular.ttf")})

try({font_paths("www/fonts/Samim-FD.ttf")
  font_paths("www/fonts/Samim-Bold-FD.ttf")
  font_add("Samim FD", regular = "www/fonts/Samim-FD.ttf",
           bold = "www/fonts/Samim-Bold-FD.ttf")})

try({font_paths("www/fonts/Samim-Medium-FD.ttf")
  font_add("Samim Medium FD", regular = "www/fonts/Samim-Medium-FD.ttf")})

try({font_paths("www/fonts/Vazir-FD.ttf")
  font_paths("www/fonts/Vazir-Bold-FD.ttf")
  font_add("Vazir FD", regular = "www/fonts/Vazir-FD.ttf",
           bold = "www/fonts/Vazir-Bold-FD.ttf")})

try({font_paths("www/fonts/Vazir-Black-FD.ttf")
  font_paths("www/fonts/Vazir-Bold-FD.ttf")
  font_add("Vazir Black FD", regular = "www/fonts/Vazir-Black-FD.ttf",
           bold = "www/fonts/Vazir-Bold-FD.ttf")})

try({font_paths("www/fonts/Yekan.ttf")
  font_add("WeblogmaYekan", regular = "www/fonts/Yekan.ttf")})

try({
  font_paths("www/fonts/ARIALN.TTF")
  font_paths("www/fonts/ARIALNB.TTF")
  font_paths("www/fonts/ARIALNI.TTF")
  font_paths("www/fonts/Arialnbi.ttf")
  font_add("Arial Narrow", regular = "ARIALN.TTF",
           bold = "ARIALNB.TTF",
           italic =  "ARIALNI.TTF",
           bolditalic = "Arialnbi.ttf")
})



try({font_paths("www/fonts/Protomolecule-Light.ttf")
  font_add("Protomolecule Light", regular = "www/fonts/Protomolecule-Light.ttf")})

try({font_paths("www/fonts/Protomolecule-Medium.ttf")
  font_add("Protomolecule Medium", regular = "www/fonts/Protomolecule-Medium.ttf")})

try({
  font_paths("www/fonts/InputMono-Regular.ttf")
  font_paths("www/fonts/InputMono-Bold.ttf")
  font_paths("www/fonts/InputMono-Italic.ttf")
  font_paths("www/fonts/InputMono-BoldItalic.ttf")
  font_add("Input Mono", regular = "InputMono-Regular.ttf",
           bold = "InputMono-Bold.ttf",
           italic =  "InputMono-Italic.ttf",
           bolditalic = "InputMono-BoldItalic.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-regular-sub.ttf")
  font_paths("www/fonts/mplus-1c-bold-sub.ttf")
  font_add("M+ 1c", regular = "mplus-1c-regular-sub.ttf",
           bold = "mplus-1c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-bold-sub.ttf")
  font_add("M+ 1c bold", regular = "mplus-1c-bold-sub.ttf",
           bold = "mplus-1c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-medium-sub.ttf")
  font_add("M+ 1c medium", regular = "mplus-1c-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-light-sub.ttf")
  font_add("M+ 1c light", regular = "mplus-1c-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-black-sub.ttf")
  font_add("M+ 1c black", regular = "mplus-1c-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-heavy-sub.ttf")
  font_add("M+ 1c heavy", regular = "mplus-1c-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-thin-sub.ttf")
  font_add("M+ 1c thin", regular = "mplus-1c-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-1p-regular-sub.ttf")
  font_paths("www/fonts/mplus-1p-bold-sub.ttf")
  font_add("M+ 1p", regular = "mplus-1p-regular-sub.ttf",
           bold = "mplus-1p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-bold-sub.ttf")
  font_add("M+ 1p bold", regular = "mplus-1p-bold-sub.ttf",
           bold = "mplus-1p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-medium-sub.ttf")
  font_add("M+ 1p medium", regular = "mplus-1p-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-light-sub.ttf")
  font_add("M+ 1p light", regular = "mplus-1p-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-black-sub.ttf")
  font_add("M+ 1p black", regular = "mplus-1p-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-heavy-sub.ttf")
  font_add("M+ 1p heavy", regular = "mplus-1p-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-thin-sub.ttf")
  font_add("M+ 1p thin", regular = "mplus-1p-thin-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-regular-sub.ttf")
  font_paths("www/fonts/mplus-2c-bold-sub.ttf")
  font_add("M+ 2c", regular = "mplus-2c-regular-sub.ttf",
           bold = "mplus-2c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-bold-sub.ttf")
  font_add("M+ 2c bold", regular = "mplus-2c-bold-sub.ttf",
           bold = "mplus-2c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-medium-sub.ttf")
  font_add("M+ 2c medium", regular = "mplus-2c-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-light-sub.ttf")
  font_add("M+ 2c light", regular = "mplus-2c-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-black-sub.ttf")
  font_add("M+ 2c black", regular = "mplus-2c-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-heavy-sub.ttf")
  font_add("M+ 2c heavy", regular = "mplus-2c-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-thin-sub.ttf")
  font_add("M+ 2c thin", regular = "mplus-2c-thin-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-regular-sub.ttf")
  font_paths("www/fonts/mplus-1m-bold-sub.ttf")
  font_add("M+ 1m", regular = "mplus-1m-regular-sub.ttf",
           bold = "mplus-1m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-bold-sub.ttf")
  font_add("M+ 1m bold", regular = "mplus-1m-bold-sub.ttf",
           bold = "mplus-1m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-medium-sub.ttf")
  font_add("M+ 1m medium", regular = "mplus-1m-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-light-sub.ttf")
  font_add("M+ 1m light", regular = "mplus-1m-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-1m-thin-sub.ttf")
  font_add("M+ 1m thin", regular = "mplus-1m-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-2m-regular-sub.ttf")
  font_paths("www/fonts/mplus-2m-bold-sub.ttf")
  font_add("M+ 2m", regular = "mplus-2m-regular-sub.ttf",
           bold = "mplus-2m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-bold-sub.ttf")
  font_add("M+ 2m bold", regular = "mplus-2m-bold-sub.ttf",
           bold = "mplus-2m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-medium-sub.ttf")
  font_add("M+ 2m medium", regular = "mplus-2m-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-light-sub.ttf")
  font_add("M+ 2m light", regular = "mplus-2m-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-2m-thin-sub.ttf")
  font_add("M+ 2m thin", regular = "mplus-2m-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-1mn-regular-sub.ttf")
  font_paths("www/fonts/mplus-1mn-bold-sub.ttf")
  font_add("M+ 1mn", regular = "mplus-1mn-regular-sub.ttf",
           bold = "mplus-1mn-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-bold-sub.ttf")
  font_add("M+ 1mn bold", regular = "mplus-1mn-bold-sub.ttf",
           bold = "mplus-1mn-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-medium-sub.ttf")
  font_add("M+ 1mn medium", regular = "mplus-1mn-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-light-sub.ttf")
  font_add("M+ 1mn light", regular = "mplus-1mn-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-1mn-thin-sub.ttf")
  font_add("M+ 1mn thin", regular = "mplus-1mn-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-2p-regular-sub.ttf")
  font_paths("www/fonts/mplus-2p-bold-sub.ttf")
  font_add("M+ 2p", regular = "mplus-2p-regular-sub.ttf",
           bold = "mplus-2p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-bold-sub.ttf")
  font_add("M+ 2p bold", regular = "mplus-2p-bold-sub.ttf",
           bold = "mplus-2p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-medium-sub.ttf")
  font_add("M+ 2p medium", regular = "mplus-2p-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-light-sub.ttf")
  font_add("M+ 2p light", regular = "mplus-2p-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-black-sub.ttf")
  font_add("M+ 2p black", regular = "mplus-2p-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-heavy-sub.ttf")
  font_add("M+ 2p heavy", regular = "mplus-2p-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-thin-sub.ttf")
  font_add("M+ 2p thin", regular = "mplus-2p-thin-sub.ttf")
})

try({
  font_paths("www/fonts/Georgia.ttf")
  font_paths("www/fonts/georgia bold.ttf")
  font_paths("www/fonts/georgia italic.ttf")
  font_paths("www/fonts/georgia bold italic.ttf")
  font_add("Georgia", regular = "Georgia.ttf",
           bold = "georgia bold.ttf",
           italic =  "georgia italic.ttf",
           bolditalic = "georgia bold italic.ttf")
})

try({font_paths("www/fonts/facebook-letter-faces.ttf")
  font_add("Facebook Letter Faces", regular = "www/fonts/facebook-letter-faces.ttf")})

try({font_paths("www/fonts/product-sans.ttf")
  font_add("Product Sans", regular = "www/fonts/product-sans.ttf")})

try({font_paths("www/fonts/pico-black.ttf")
  font_add("PicoBlackAl", regular = "www/fonts/pico-black.ttf")})

try({font_paths("www/fonts/arista-light.ttf")
  font_add("Arista Light", regular = "www/fonts/arista-light.ttf")})

try({font_paths("www/fonts/arista-light.ttf")
  font_add("[z] Arista Light", regular = "www/fonts/arista-light.ttf")})

try({font_paths("www/fonts/HelveticaNeue Bold.ttf")
  font_add("Helvetica Neue Bold", regular = "www/fonts/HelveticaNeue Bold.ttf")})

try({font_paths("www/fonts/CircularAir-Bold.ttf")
  font_add("Circular Air Bold", regular = "www/fonts/CircularAir-Bold.ttf")})

try({font_paths("www/fonts/Circular Air-Medium.ttf")
  font_add("Circular Air Medium", regular = "www/fonts/Circular Air-Medium.ttf")})

try({font_paths("www/fonts/BFTinyHand-Regular.ttf")
  font_add("BFTinyHand-Regular", regular = "www/fonts/BFTinyHand-Regular.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-rg.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-bd.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-it.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-bd-it.ttf")
  font_add("EconSansCndReg", regular = "www/fonts/econsans-condensed-primary-subset-rg.ttf",
           bold = "econsans-condensed-primary-subset-bd.ttf",
           italic = "econsans-condensed-primary-subset-it.ttf",
           bolditalic = "econsans-condensed-primary-subset-bd-it.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-bd.ttf")
  font_add("EconSansCndBol", regular = "www/fonts/econsans-condensed-primary-subset-bd.ttf",
           bold = "econsans-condensed-primary-subset-bd.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-li.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-li-it.ttf")
  font_add("EconSansCndLig", regular = "www/fonts/econsans-condensed-primary-subset-li.ttf",
           italic = "econsans-condensed-primary-subset-li-it.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-md.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-md-it.ttf")
  font_add("EconSansCndMed", regular = "www/fonts/econsans-condensed-primary-subset-md.ttf",
           italic = "econsans-condensed-primary-subset-md-it.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Bold.ttf")
  font_add("IBMPlexSans-Bold", regular = "IBMPlexSans-Bold.ttf",
           bold="IBMPlexSans-Bold.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Light.ttf")
  font_add("IBMPlexSans-Light", regular = "IBMPlexSans-Light.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Medium.ttf")
  font_add("IBMPlexSans-Medium", regular = "IBMPlexSans-Medium.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Text.ttf")
  font_add("IBMPlexSans-Text", regular = "IBMPlexSans-Text.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Thin.ttf")
  font_add("IBMPlexSans-Thin", regular = "IBMPlexSans-Thin.ttf")})

try({font_paths("www/fonts/PublicSans-Thin.ttf")
  font_add("Public Sans Thin", regular = "PublicSans-Thin.ttf")})

try({font_paths("www/fonts/PublicSans-Light.ttf")
  font_add("Public Sans Light", regular = "PublicSans-Light.ttf")})

try({font_paths("www/fonts/PublicSans-ExtraLight.ttf")
  font_add("Public Sans Extra Light", regular = "PublicSans-ExtraLight.ttf")})

try({font_paths("www/fonts/PublicSans-Medium.ttf")
  font_add("Public Sans Medium", regular = "PublicSans-Medium.ttf")})

try({font_paths("www/fonts/PublicSans-Bold.ttf")
  font_add("Public Sans Bold", regular = "PublicSans-Bold.ttf",
           bold="PublicSans-Bold.ttf")})

try({font_paths("www/fonts/PublicSans-ExtraBold.ttf")
  font_paths("www/fonts/PublicSans-ExtraBoldItalic.ttf")
  font_add("Public Sans Extra Bold", regular = "PublicSans-ExtraBold.ttf",
           italic="PublicSans-ExtraBoldItalic.ttf")})

try({font_paths("www/fonts/PublicSans-Black.ttf")
  font_paths("www/fonts/PublicSans-BlackItalic.ttf")
  font_add("Public Sans Black", regular = "PublicSans-Black.ttf",
           italic="PublicSans-BlackItalic.ttf")})

try({font_paths("www/fonts/Lato-Light.ttf")
  font_paths("www/fonts/Lato-LightItalic.ttf")
  font_add("Lato Light", regular = "Lato-Light.ttf",
           italic="Lato-LightItalic.ttf")})

try({font_paths("www/fonts/Lato-Bold.ttf")
  font_paths("www/fonts/Lato-BoldItalic.ttf")
  font_add("Lato Bold", regular = "Lato-Bold.ttf",
           italic="Lato-BoldItalic.ttf")})

try({font_paths("www/fonts/Lato-Hairline.ttf")
  font_paths("www/fonts/Lato-HairlineItalic.ttf")
  font_add("Lato Hairline", regular = "Lato-Hairline.ttf",
           italic="Lato-HairlineItalic.ttf")})

try({font_paths("www/fonts/Lato-Heavy.ttf")
  font_paths("www/fonts/Lato-HeavyItalic.ttf")
  font_add("Lato Heavy", regular = "Lato-Heavy.ttf",
           italic="Lato-HeavyItalic.ttf")})

try({font_paths("www/fonts/Lato-Medium.ttf")
  font_paths("www/fonts/Lato-MediumItalic.ttf")
  font_add("Lato Medium", regular = "Lato-Medium.ttf",
           italic="Lato-MediumItalic.ttf")})

try({font_paths("www/fonts/Lato-Semibold.ttf")
  font_paths("www/fonts/Lato-SemiboldItalic.ttf")
  font_add("Lato Semibold", regular = "Lato-Semibold.ttf",
           italic="Lato-SemiboldItalic.ttf")})

try({font_paths("www/fonts/Lato-Thin.ttf")
  font_paths("www/fonts/Lato-ThinItalic.ttf")
  font_add("Lato Thin", regular = "Lato-Thin.ttf",
           italic="Lato-ThinItalic.ttf")})

try({font_paths("www/fonts/pokemon-font.ttf")
  font_add("pokemon-font", regular = "pokemon-font.ttf")})

try({font_paths("www/fonts/Inter-ExtraBold.ttf")
  font_paths("www/fonts/Inter-ExtraBoldItalic.ttf")
  font_add("Inter Extra Bold", regular = "Inter-ExtraBold.ttf",
           italic = "Inter-ExtraBoldItalic.ttf")})

try({font_paths("www/fonts/Inter-Light.ttf")
  font_paths("www/fonts/Inter-LightItalic.ttf")
  font_add("Inter Light", regular = "Inter-Light.ttf",
           italic = "Inter-LightItalic.ttf")})

try({font_paths("www/fonts/Inter-Light.ttf")
  font_paths("www/fonts/Inter-LightItalic.ttf")
  font_add("Inter-Light", regular = "Inter-Light.ttf",
           italic = "Inter-LightItalic.ttf")})

try({font_paths("www/fonts/Inter-Bold.ttf")
  font_paths("www/fonts/Inter-BoldItalic.ttf")
  font_add("Inter Bold", regular = "Inter-Bold.ttf",
           italic = "Inter-BoldItalic.ttf",
           bold = "Inter-Bold.ttf")})

try({font_paths("www/fonts/Inter-Bold.ttf")
  font_paths("www/fonts/Inter-BoldItalic.ttf")
  font_add("Inter-Bold", regular = "Inter-Bold.ttf",
           italic = "Inter-BoldItalic.ttf",
           bold = "Inter-Bold.ttf")})

try({font_paths("www/fonts/Inter-Medium.ttf")
  font_paths("www/fonts/Inter-MediumItalic.ttf")
  font_add("Inter Medium", regular = "Inter-Medium.ttf",
           italic = "Inter-MediumItalic.ttf")})

try({font_paths("www/fonts/Inter-Medium.ttf")
  font_paths("www/fonts/Inter-MediumItalic.ttf")
  font_add("Inter-Medium", regular = "Inter-Medium.ttf",
           italic = "Inter-MediumItalic.ttf")})

try({font_paths("www/fonts/vcr.ttf")
  font_add("VCR OSD Mono", regular = "www/fonts/vcr.ttf")})

try({font_paths("www/fonts/SFAlienEncounters.ttf")
  font_add("SF Alien Encounters", regular = "www/fonts/SFAlienEncounters.ttf",
           italic = "www/fonts/SFAlienEncounters-Italic.ttf")})

try({font_paths("www/fonts/SFAlienEncountersSolid.ttf")
  font_paths("www/fonts/SFAlienEncountersSolid-Ital.ttf")
  font_add("SF Alien Encounters Solid", regular = "www/fonts/SFAlienEncountersSolid.ttf",
           italic = "www/fonts/SFAlienEncountersSolid-Ital.ttf")})

try({font_paths("www/fonts/windows_command_prompt.ttf")
  font_add("Windows Command Prompt", regular = "www/fonts/windows_command_prompt.ttf")})

try({font_paths("www/fonts/BLADRMF.TTF")
  font_add("Blade Runner Movie Font", regular = "www/fonts/BLADRMF.TTF")})

try({font_paths("www/fonts/xkcd.ttf")
  font_add("xkcd", regular = "xkcd.ttf")})

try({font_paths("www/fonts/HerculanumRegular.ttf")
  font_add("Slayer", regular = "HerculanumRegular.ttf")})

try({font_paths("www/fonts/get_schwifty.ttf")
  font_add("Get Schwifty", regular = "get_schwifty.ttf")})

try({font_paths("www/fonts/akbar.ttf")
  font_add("Akbar", regular = "akbar.ttf")})

try({font_paths("www/fonts/Some-Time-Later.ttf")
  font_add("Some Time Later", regular = "Some-Time-Later.ttf")})

try({font_paths("www/fonts/calibril.ttf")
  font_add("Calibri Light", regular = "calibril.ttf")})

try({font_paths("www/fonts/TitilliumWeb-Regular.ttf")
  font_paths("www/fonts/TitilliumWeb-Italic.ttf")
  font_paths("www/fonts/TitilliumWeb-Bold.ttf")
  font_paths("www/fonts/TitilliumWeb-BoldItalic.ttf")
  font_add("Titillium Web Black", regular = "TitilliumWebBlack.ttf",
           bold = "TitilliumWeb-Bold.ttf",
           italic = "TitilliumWeb-Italic.ttf",
           bolditalic = "TitilliumWeb-BoldItalic.ttf")})

try({font_paths("www/fonts/TitilliumWeb-Bold.ttf")
  font_add("Titillium Web Bold", regular = "TitilliumWeb-Bold.ttf",
           bold = "TitilliumWeb-Bold.ttf")})

try({font_paths("www/fonts/Hind-Regular.ttf")
  font_paths("www/fonts/Hind-Bold.ttf")
  font_add("Hind", regular = "Hind-Regular.ttf",
           bold = "Hind-Bold.ttf")
})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind Medium", regular = "Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind Medium", regular = "Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind-Medium", regular = "Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Light.ttf")
  font_add("Hind-Light", regular = "Hind-Light.ttf")})

try({font_paths("www/fonts/Hind-SemiBold.ttf")
  font_add("Hind-SemiBold", regular = "Hind-SemiBold.ttf")})

try({font_paths("www/fonts/Marianne-Regular.otf")
  font_add("Marianne", regular = "Marianne-Regular.otf")})

try({font_paths("www/fonts/Marianne-Regular.otf")
  font_add("Marianne Light", regular = "Marianne-Regular.otf")})

try({font_paths("www/fonts/GoldmanSansCd_Bd.ttf")
  font_paths("www/fonts/GoldmanSansCd_Rg.ttf")
  font_add("Goldman Sans Condensed", regular = "GoldmanSansCd_Rg.ttf",
           bold = "GoldmanSansCd_Bd.ttf")})

#Fuentes para paquetes específicos
funciones_tvthemes <- list('theme_avatar(title.font = "Slayer",text.font = "Slayer")',
                          'theme_brooklyn99(title.font = "Titillium Web",text.font = "Calibri Light")',
                          'theme_hildaDay()',
                          'theme_hildaDusk()',
                          'theme_hildaNight()',
                          'theme_parksAndRec(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_parksAndRec_light(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_parksAndRecLight(text.font = "Titillium Web",title.font = "Titillium Web Black")',
                          'theme_rickAndMorty(title.font = "Get Schwifty",text.font = "Get Schwifty")',
                          'theme_simpsons(title.font = "Akbar",text.font = "Akbar")',
                          'theme_spongeBob(title.font = "Some Time Later",text.font = "Some Time Later")',
                          'theme_theLastAirbender(title.font = "Slayer",text.font = "Slayer")')
