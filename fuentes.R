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
try({font_add_google(name = "Roboto", family = "Roboto Regular")})
try({font_add_google(name = "Roboto Condensed", family = "Roboto Condensed")})
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

#Ruta de las fuentes
font_paths("www/fonts")

try({
  font_paths("www/fonts/Helvetica.ttf")
  font_paths("www/fonts/Helvetica-Bold.ttf")
  font_add("Helvetica", regular="Helvetica.ttf",
           bold = "Helvetica-Bold.ttf")
})

try({
  font_paths("www/fonts/verdana.ttf")
  font_paths("www/fonts/verdana-bold.ttf")
  font_paths("www/fonts/verdana-bold-italic.ttf")
  font_add("Verdana", regular="verdana.ttf",
           bold = "verdana-bold.ttf",
           bolditalic = "verdana-bold-italic.ttf")
})

try({
  font_paths("www/fonts/ARIAL.TTF")
  font_paths("www/fonts/ARIALBD.TTF")
  font_paths("www/fonts/ARIALBI.TTF")
  font_paths("www/fonts/ARIALI.TTF")
  font_add("Arial", regular="ARIAL.TTF",
           bold = "ARIALBD.TTF",
           italic =  "ARIALI.TTF",
           bolditalic = "ARIALBI.TTF")
})

try({
  font_paths("www/fonts/times new roman.ttf")
  font_paths("www/fonts/times new roman bold.ttf")
  font_paths("www/fonts/times new roman italic.ttf")
  font_paths("www/fonts/times new roman bold italic.ttf")
  font_add("Times New Roman", regular="times new roman.ttf",
           bold = "times new roman bold.ttf",
           italic =  "times new roman italic.ttf",
           bolditalic = "times new roman bold italic.ttf")
})

try({
  font_paths("www/fonts/Geneva Regular.ttf")
  font_paths("www/fonts/Geneva Bold-Italic.ttf")
  font_add("Geneva", regular="Geneva Regular.ttf",
           bolditalic = "Geneva Bold-Italic.ttf")
})

try({
  font_paths("www/fonts/SauceCodeProNerdFont-Regular.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-Italic.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-Bold.ttf")
  font_paths("www/fonts/SauceCodeProNerdFont-BoldItalic.ttf")
  font_add("SauceCode Pro Nerd Font", regular="SauceCodeProNerdFont-Regular.ttf",
           bold = "SauceCodeProNerdFont-Bold.ttf",
           italic =  "SauceCodeProNerdFont-Italic.ttf",
           bolditalic = "SauceCodeProNerdFont-BoldItalic.ttf")
})

try({font_paths("www/fonts/Aljazeera.ttf")
  font_add("Aljazeera", regular="www/fonts/Aljazeera.ttf")})

try({font_paths("www/fonts/zangar.ttf")
  font_paths("www/fonts/A.Zangar.Hamshahri.Bold.ttf")
  font_add("Zangar", regular="www/fonts/zangar.ttf",
           bold = "A.Zangar.Hamshahri.Bold.ttf")})

try({font_paths("www/fonts/ARooznameh.ttf")
  font_add("A Rooznameh", regular="www/fonts/ARooznameh.ttf")})

try({font_paths("www/fonts/Nahid-FD.ttf")
  font_add("Nahid FD", regular="www/fonts/Nahid-FD.ttf")})

try({font_paths("www/fonts/Nika-Regular.ttf")
  font_add("Nika-Regular", regular="www/fonts/Nika-Regular.ttf")})

try({font_paths("www/fonts/Samim-FD.ttf")
  font_paths("www/fonts/Samim-Bold-FD.ttf")
  font_add("Samim FD", regular="www/fonts/Samim-FD.ttf",
           bold = "www/fonts/Samim-Bold-FD.ttf")})

try({font_paths("www/fonts/Samim-Medium-FD.ttf")
  font_add("Samim Medium FD", regular="www/fonts/Samim-Medium-FD.ttf")})

try({font_paths("www/fonts/Vazir-FD.ttf")
  font_paths("www/fonts/Vazir-Bold-FD.ttf")
  font_add("Vazir FD", regular="www/fonts/Vazir-FD.ttf",
           bold = "www/fonts/Vazir-Bold-FD.ttf")})

try({font_paths("www/fonts/Vazir-Black-FD.ttf")
  font_paths("www/fonts/Vazir-Bold-FD.ttf")
  font_add("Vazir Black FD", regular="www/fonts/Vazir-Black-FD.ttf",
           bold = "www/fonts/Vazir-Bold-FD.ttf")})

try({font_paths("www/fonts/Yekan.ttf")
  font_add("WeblogmaYekan", regular="www/fonts/Yekan.ttf")})

try({
  font_paths("www/fonts/ARIALN.TTF")
  font_paths("www/fonts/ARIALNB.TTF")
  font_paths("www/fonts/ARIALNI.TTF")
  font_paths("www/fonts/Arialnbi.ttf")
  font_add("Arial Narrow", regular="ARIALN.TTF",
           bold = "ARIALNB.TTF",
           italic =  "ARIALNI.TTF",
           bolditalic = "Arialnbi.ttf")
})



try({font_paths("www/fonts/Protomolecule-Light.ttf")
  font_add("Protomolecule Light", regular="www/fonts/Protomolecule-Light.ttf")})

try({font_paths("www/fonts/Protomolecule-Medium.ttf")
  font_add("Protomolecule Medium", regular="www/fonts/Protomolecule-Medium.ttf")})

try({
  font_paths("www/fonts/InputMono-Regular.ttf")
  font_paths("www/fonts/InputMono-Bold.ttf")
  font_paths("www/fonts/InputMono-Italic.ttf")
  font_paths("www/fonts/InputMono-BoldItalic.ttf")
  font_add("Input Mono", regular="InputMono-Regular.ttf",
           bold = "InputMono-Bold.ttf",
           italic =  "InputMono-Italic.ttf",
           bolditalic = "InputMono-BoldItalic.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-regular-sub.ttf")
  font_paths("www/fonts/mplus-1c-bold-sub.ttf")
  font_add("M+ 1c", regular="mplus-1c-regular-sub.ttf",
           bold ="mplus-1c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-bold-sub.ttf")
  font_add("M+ 1c bold", regular="mplus-1c-bold-sub.ttf",
           bold ="mplus-1c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-medium-sub.ttf")
  font_add("M+ 1c medium", regular="mplus-1c-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-light-sub.ttf")
  font_add("M+ 1c light", regular="mplus-1c-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-black-sub.ttf")
  font_add("M+ 1c black", regular="mplus-1c-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-heavy-sub.ttf")
  font_add("M+ 1c heavy", regular="mplus-1c-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1c-thin-sub.ttf")
  font_add("M+ 1c thin", regular="mplus-1c-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-1p-regular-sub.ttf")
  font_paths("www/fonts/mplus-1p-bold-sub.ttf")
  font_add("M+ 1p", regular="mplus-1p-regular-sub.ttf",
           bold ="mplus-1p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-bold-sub.ttf")
  font_add("M+ 1p bold", regular="mplus-1p-bold-sub.ttf",
           bold ="mplus-1p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-medium-sub.ttf")
  font_add("M+ 1p medium", regular="mplus-1p-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-light-sub.ttf")
  font_add("M+ 1p light", regular="mplus-1p-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-black-sub.ttf")
  font_add("M+ 1p black", regular="mplus-1p-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-heavy-sub.ttf")
  font_add("M+ 1p heavy", regular="mplus-1p-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1p-thin-sub.ttf")
  font_add("M+ 1p thin", regular="mplus-1p-thin-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-regular-sub.ttf")
  font_paths("www/fonts/mplus-2c-bold-sub.ttf")
  font_add("M+ 2c", regular="mplus-2c-regular-sub.ttf",
           bold ="mplus-2c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-bold-sub.ttf")
  font_add("M+ 2c bold", regular="mplus-2c-bold-sub.ttf",
           bold ="mplus-2c-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-medium-sub.ttf")
  font_add("M+ 2c medium", regular="mplus-2c-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-light-sub.ttf")
  font_add("M+ 2c light", regular="mplus-2c-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-black-sub.ttf")
  font_add("M+ 2c black", regular="mplus-2c-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-heavy-sub.ttf")
  font_add("M+ 2c heavy", regular="mplus-2c-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2c-thin-sub.ttf")
  font_add("M+ 2c thin", regular="mplus-2c-thin-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-regular-sub.ttf")
  font_paths("www/fonts/mplus-1m-bold-sub.ttf")
  font_add("M+ 1m", regular="mplus-1m-regular-sub.ttf",
           bold ="mplus-1m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-bold-sub.ttf")
  font_add("M+ 1m bold", regular="mplus-1m-bold-sub.ttf",
           bold ="mplus-1m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-medium-sub.ttf")
  font_add("M+ 1m medium", regular="mplus-1m-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1m-light-sub.ttf")
  font_add("M+ 1m light", regular="mplus-1m-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-1m-thin-sub.ttf")
  font_add("M+ 1m thin", regular="mplus-1m-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-2m-regular-sub.ttf")
  font_paths("www/fonts/mplus-2m-bold-sub.ttf")
  font_add("M+ 2m", regular="mplus-2m-regular-sub.ttf",
           bold ="mplus-2m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-bold-sub.ttf")
  font_add("M+ 2m bold", regular="mplus-2m-bold-sub.ttf",
           bold ="mplus-2m-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-medium-sub.ttf")
  font_add("M+ 2m medium", regular="mplus-2m-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2m-light-sub.ttf")
  font_add("M+ 2m light", regular="mplus-2m-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-2m-thin-sub.ttf")
  font_add("M+ 2m thin", regular="mplus-2m-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-1mn-regular-sub.ttf")
  font_paths("www/fonts/mplus-1mn-bold-sub.ttf")
  font_add("M+ 1mn", regular="mplus-1mn-regular-sub.ttf",
           bold ="mplus-1mn-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-bold-sub.ttf")
  font_add("M+ 1mn bold", regular="mplus-1mn-bold-sub.ttf",
           bold ="mplus-1mn-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-medium-sub.ttf")
  font_add("M+ 1mn medium", regular="mplus-1mn-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-1mn-light-sub.ttf")
  font_add("M+ 1mn light", regular="mplus-1mn-light-sub.ttf")
})


try({
  font_paths("www/fonts/mplus-1mn-thin-sub.ttf")
  font_add("M+ 1mn thin", regular="mplus-1mn-thin-sub.ttf")
})
try({
  font_paths("www/fonts/mplus-2p-regular-sub.ttf")
  font_paths("www/fonts/mplus-2p-bold-sub.ttf")
  font_add("M+ 2p", regular="mplus-2p-regular-sub.ttf",
           bold ="mplus-2p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-bold-sub.ttf")
  font_add("M+ 2p bold", regular="mplus-2p-bold-sub.ttf",
           bold ="mplus-2p-bold-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-medium-sub.ttf")
  font_add("M+ 2p medium", regular="mplus-2p-medium-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-light-sub.ttf")
  font_add("M+ 2p light", regular="mplus-2p-light-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-black-sub.ttf")
  font_add("M+ 2p black", regular="mplus-2p-black-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-heavy-sub.ttf")
  font_add("M+ 2p heavy", regular="mplus-2p-heavy-sub.ttf")
})

try({
  font_paths("www/fonts/mplus-2p-thin-sub.ttf")
  font_add("M+ 2p thin", regular="mplus-2p-thin-sub.ttf")
})

try({
  font_paths("www/fonts/Georgia.ttf")
  font_paths("www/fonts/georgia bold.ttf")
  font_paths("www/fonts/georgia italic.ttf")
  font_paths("www/fonts/georgia bold italic.ttf")
  font_add("Georgia", regular="Georgia.ttf",
           bold = "georgia bold.ttf",
           italic =  "georgia italic.ttf",
           bolditalic = "georgia bold italic.ttf")
})

try({font_paths("www/fonts/facebook-letter-faces.ttf")
  font_add("Facebook Letter Faces", regular="www/fonts/facebook-letter-faces.ttf")})

try({font_paths("www/fonts/product-sans.ttf")
  font_add("Product Sans", regular="www/fonts/product-sans.ttf")})

try({font_paths("www/fonts/pico-black.ttf")
  font_add("PicoBlackAl", regular="www/fonts/pico-black.ttf")})

try({font_paths("www/fonts/arista-light.ttf")
  font_add("Arista Light", regular="www/fonts/arista-light.ttf")})

try({font_paths("www/fonts/arista-light.ttf")
  font_add("[z] Arista Light", regular="www/fonts/arista-light.ttf")})

try({font_paths("www/fonts/HelveticaNeue Bold.ttf")
  font_add("Helvetica Neue Bold", regular="www/fonts/HelveticaNeue Bold.ttf")})

try({font_paths("www/fonts/CircularAir-Bold.ttf")
  font_add("Circular Air Bold", regular="www/fonts/CircularAir-Bold.ttf")})

try({font_paths("www/fonts/Circular Air-Medium.ttf")
  font_add("Circular Air Medium", regular="www/fonts/Circular Air-Medium.ttf")})

try({font_paths("www/fonts/BFTinyHand-Regular.ttf")
  font_add("BFTinyHand-Regular", regular="www/fonts/BFTinyHand-Regular.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-rg.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-bd.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-it.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-bd-it.ttf")
  font_add("EconSansCndReg", regular="www/fonts/econsans-condensed-primary-subset-rg.ttf",
           bold = "econsans-condensed-primary-subset-bd.ttf",
           italic = "econsans-condensed-primary-subset-it.ttf",
           bolditalic = "econsans-condensed-primary-subset-bd-it.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-bd.ttf")
  font_add("EconSansCndBol", regular="www/fonts/econsans-condensed-primary-subset-bd.ttf",
           bold = "econsans-condensed-primary-subset-bd.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-li.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-li-it.ttf")
  font_add("EconSansCndLig", regular="www/fonts/econsans-condensed-primary-subset-li.ttf",
           italic = "econsans-condensed-primary-subset-li-it.ttf")})

try({font_paths("www/fonts/econsans-condensed-primary-subset-md.ttf")
  font_paths("www/fonts/econsans-condensed-primary-subset-md-it.ttf")
  font_add("EconSansCndMed", regular="www/fonts/econsans-condensed-primary-subset-md.ttf",
           italic = "econsans-condensed-primary-subset-md-it.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Bold.ttf")
  font_add("IBMPlexSans-Bold", regular="IBMPlexSans-Bold.ttf",
           bold="IBMPlexSans-Bold.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Light.ttf")
  font_add("IBMPlexSans-Light", regular="IBMPlexSans-Light.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Medium.ttf")
  font_add("IBMPlexSans-Medium", regular="IBMPlexSans-Medium.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Text.ttf")
  font_add("IBMPlexSans-Text", regular="IBMPlexSans-Text.ttf")})

try({font_paths("www/fonts/IBMPlexSans-Thin.ttf")
  font_add("IBMPlexSans-Thin", regular="IBMPlexSans-Thin.ttf")})

try({font_paths("www/fonts/PublicSans-Thin.ttf")
  font_add("Public Sans Thin", regular="PublicSans-Thin.ttf")})

try({font_paths("www/fonts/PublicSans-Light.ttf")
  font_add("Public Sans Light", regular="PublicSans-Light.ttf")})

try({font_paths("www/fonts/PublicSans-ExtraLight.ttf")
  font_add("Public Sans Extra Light", regular="PublicSans-ExtraLight.ttf")})

try({font_paths("www/fonts/PublicSans-Medium.ttf")
  font_add("Public Sans Medium", regular="PublicSans-Medium.ttf")})

try({font_paths("www/fonts/PublicSans-Bold.ttf")
  font_add("Public Sans Bold", regular="PublicSans-Bold.ttf",
           bold="PublicSans-Bold.ttf")})

try({font_paths("www/fonts/PublicSans-ExtraBold.ttf")
  font_paths("www/fonts/PublicSans-ExtraBoldItalic.ttf")
  font_add("Public Sans Extra Bold", regular="PublicSans-ExtraBold.ttf",
           italic="PublicSans-ExtraBoldItalic.ttf")})

try({font_paths("www/fonts/PublicSans-Black.ttf")
  font_paths("www/fonts/PublicSans-BlackItalic.ttf")
  font_add("Public Sans Black", regular="PublicSans-Black.ttf",
           italic="PublicSans-BlackItalic.ttf")})

try({font_paths("www/fonts/Lato-Light.ttf")
  font_paths("www/fonts/Lato-LightItalic.ttf")
  font_add("Lato Light", regular="Lato-Light.ttf",
           italic="Lato-LightItalic.ttf")})

try({font_paths("www/fonts/Lato-Bold.ttf")
  font_paths("www/fonts/Lato-BoldItalic.ttf")
  font_add("Lato Bold", regular="Lato-Bold.ttf",
           italic="Lato-BoldItalic.ttf")})

try({font_paths("www/fonts/Lato-Hairline.ttf")
  font_paths("www/fonts/Lato-HairlineItalic.ttf")
  font_add("Lato Hairline", regular="Lato-Hairline.ttf",
           italic="Lato-HairlineItalic.ttf")})

try({font_paths("www/fonts/Lato-Heavy.ttf")
  font_paths("www/fonts/Lato-HeavyItalic.ttf")
  font_add("Lato Heavy", regular="Lato-Heavy.ttf",
           italic="Lato-HeavyItalic.ttf")})

try({font_paths("www/fonts/Lato-Medium.ttf")
  font_paths("www/fonts/Lato-MediumItalic.ttf")
  font_add("Lato Medium", regular="Lato-Medium.ttf",
           italic="Lato-MediumItalic.ttf")})

try({font_paths("www/fonts/Lato-Semibold.ttf")
  font_paths("www/fonts/Lato-SemiboldItalic.ttf")
  font_add("Lato Semibold", regular="Lato-Semibold.ttf",
           italic="Lato-SemiboldItalic.ttf")})

try({font_paths("www/fonts/Lato-Thin.ttf")
  font_paths("www/fonts/Lato-ThinItalic.ttf")
  font_add("Lato Thin", regular="Lato-Thin.ttf",
           italic="Lato-ThinItalic.ttf")})

try({font_paths("www/fonts/pokemon-font.ttf")
  font_add("pokemon-font", regular="pokemon-font.ttf")})

try({font_paths("www/fonts/Inter-ExtraBold.ttf")
  font_paths("www/fonts/Inter-ExtraBoldItalic.ttf")
  font_add("Inter Extra Bold", regular="Inter-ExtraBold.ttf",
           italic = "Inter-ExtraBoldItalic.ttf")})

try({font_paths("www/fonts/Inter-Light.ttf")
  font_paths("www/fonts/Inter-LightItalic.ttf")
  font_add("Inter Extra Bold", regular="Inter-Light.ttf",
           italic = "Inter-LightItalic.ttf")})

try({font_paths("www/fonts/Inter-Bold.ttf")
  font_paths("www/fonts/Inter-BoldItalic.ttf")
  font_add("Inter Bold", regular="Inter-Bold.ttf",
           italic = "Inter-BoldItalic.ttf",
           bold = "Inter-Bold.ttf")})

try({font_paths("www/fonts/vcr.ttf")
  font_add("VCR OSD Mono", regular="www/fonts/vcr.ttf")})

try({font_paths("www/fonts/SFAlienEncounters.ttf")
  font_add("SF Alien Encounters", regular="www/fonts/SFAlienEncounters.ttf",
           italic = "www/fonts/SFAlienEncounters-Italic.ttf")})

try({font_paths("www/fonts/SFAlienEncountersSolid.ttf")
  font_paths("www/fonts/SFAlienEncountersSolid-Ital.ttf")
  font_add("SF Alien Encounters Solid", regular="www/fonts/SFAlienEncountersSolid.ttf",
           italic = "www/fonts/SFAlienEncountersSolid-Ital.ttf")})

try({font_paths("www/fonts/windows_command_prompt.ttf")
  font_add("Windows Command Prompt", regular="www/fonts/windows_command_prompt.ttf")})

try({font_paths("www/fonts/BLADRMF.TTF")
  font_add("Blade Runner Movie Font", regular="www/fonts/BLADRMF.TTF")})

try({font_paths("www/fonts/xkcd.ttf")
  font_add("xkcd", regular="xkcd.ttf")})

try({font_paths("www/fonts/HerculanumRegular.ttf")
  font_add("Slayer", regular="HerculanumRegular.ttf")})

try({font_paths("www/fonts/get_schwifty.ttf")
  font_add("Get Schwifty", regular="get_schwifty.ttf")})

try({font_paths("www/fonts/akbar.ttf")
  font_add("Akbar", regular="akbar.ttf")})

try({font_paths("www/fonts/Some-Time-Later.ttf")
  font_add("Some Time Later", regular="Some-Time-Later.ttf")})

try({font_paths("www/fonts/calibril.ttf")
  font_add("Calibri Light", regular="calibril.ttf")})

try({font_paths("www/fonts/TitilliumWeb-Regular.ttf")
  font_paths("www/fonts/TitilliumWeb-Italic.ttf")
  font_paths("www/fonts/TitilliumWeb-Regular.ttf")
  font_paths("www/fonts/TitilliumWeb-Regular.ttf")
  font_add("Titillium Web Black", regular="www/fonts/TitilliumWeb-Regular.ttf",
           bold = "TitilliumWeb-Bold.ttf",
           italic = "TitilliumWeb-Italic.ttf",
           bolditalic = "TitilliumWeb-BoldItalic.ttf")})

try({font_paths("www/fonts/Hind-Regular.ttf")
  font_paths("www/fonts/Hind-Bold.ttf")
  font_add("Hind", regular="Hind-Regular.ttf",
           bold = "Hind-Bold.ttf")
})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind Medium", regular="Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind Medium", regular="Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Medium.ttf")
  font_add("Hind-Medium", regular="Hind-Medium.ttf")})

try({font_paths("www/fonts/Hind-Light.ttf")
  font_add("Hind-Light", regular="Hind-Light.ttf")})

try({font_paths("www/fonts/Hind-SemiBold.ttf")
  font_add("Hind-SemiBold", regular="Hind-SemiBold.ttf")})

try({font_paths("www/fonts/Marianne-Regular.otf")
  font_add("Marianne", regular="Marianne-Regular.otf")})

try({font_paths("www/fonts/Marianne-Regular.otf")
  font_add("Marianne Light", regular="Marianne-Regular.otf")})

## Corregir temas

  #Paquete firatheme
theme_fira <- function(family = "Fira Sans") {
  ggplot2::`%+replace%`(
    ggplot2::theme_grey(base_size = 11.5, base_family = family),
    ggplot2::theme(
      # add padding to the plot
      plot.margin = grid::unit(rep(0.5, 4), "cm"),
      
      # remove the plot background and border
      plot.background = ggplot2::element_blank(),
      panel.background = ggplot2::element_blank(),
      panel.border = ggplot2::element_blank(),
      
      # make the legend and strip background transparent
      legend.background = ggplot2::element_rect(fill = "transparent",
                                                colour = NA),
      legend.key = ggplot2::element_rect(fill = "transparent",colour = NA),
      strip.background = ggplot2::element_rect(fill = "transparent",
                                               colour = NA),
      
      # add light, dotted major grid lines only
      panel.grid.major = ggplot2::element_line(linetype = "dotted",
                                               colour = "#454545",
                                               size = 0.3),
      panel.grid.minor = ggplot2::element_blank(),
      
      # remove the axis tick marks and hide axis lines
      axis.ticks = ggplot2::element_blank(),
      axis.line = ggplot2::element_line(color = "#454545", size = 0.3),
      
      # modify the bottom margins of the title and subtitle
      plot.title = ggplot2::element_text(size = 18, colour = "#454545",
                                         hjust = 0.5,
                                         margin = ggplot2::margin(b = 10)),
      plot.subtitle = ggplot2::element_text(size = 12, colour = "#454545",
                                            hjust = 0.5,
                                            margin = ggplot2::margin(b = 10)),
      
      # add padding to the caption
      plot.caption = ggplot2::element_text(size = 10, colour = "#454545",
                                           hjust = 1,
                                           margin = ggplot2::margin(t = 15)),
      
      # Adjust text size and axis title position
      axis.title = ggplot2::element_text(size = 13, colour = "#454545",
                                         hjust = 0.95),
      axis.text = ggplot2::element_text(size = 10, colour = "#212121"),
      legend.title = ggplot2::element_text(size = 12, colour = "#454545"),
      legend.text = ggplot2::element_text(size = 10, colour = "#454545"),
      strip.text = ggplot2::element_text(size = 12, colour = "#454545", 
                                         margin = ggplot2::margin(10, 10, 
                                                                  10, 10, 
                                                                  "pt"))
    )
  )
}

  #Paquete ggexpanse

theme_expanse <- function(base_family = "Protomolecule Light",
                          base_size = 11.5,
                          plot_title_family = "Protomolecule Medium",
                          plot_title_size = 18,
                          plot_title_face = "plain",
                          plot_title_margin = 10,
                          plot_title_col = expanse_cols$white,
                          subtitle_family = "Protomolecule Light",
                          subtitle_size = 13,
                          subtitle_face = "plain",
                          subtitle_col = expanse_cols$mcrn_red_1,
                          subtitle_margin = 15,
                          strip_text_family = base_family,
                          strip_text_size = 12,
                          strip_text_face = "plain",
                          strip_text_col = expanse_cols$white,
                          caption_family = "Protomolecule Light",
                          caption_size = 9,
                          caption_face = "plain",
                          caption_margin = 10,
                          caption_col = expanse_cols$white,
                          axis_text_size = base_size,
                          axis_title_family = base_family,
                          axis_title_size = 9,
                          axis_title_face = "plain",
                          axis_title_just = "rt",
                          plot_margin = margin(30, 30, 30, 30),
                          panel_spacing = grid::unit(2, "lines"),
                          text_col = expanse_cols$white,
                          grid_col = alpha(expanse_cols$white, 1/2),
                          axis_col = grid_col,
                          background_col = expanse_cols$background,
                          foreground_col = expanse_cols$display_blue,
                          grid = TRUE, axis = FALSE, ticks = FALSE) {
  
  
  ggplot2::update_geom_defaults("point", list(colour = foreground_col))
  ggplot2::update_geom_defaults("line", list(colour = foreground_col))
  ggplot2::update_geom_defaults("area", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("rect", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("density", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("bar", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("col", list(colour = foreground_col, fill = foreground_col))
  ggplot2::update_geom_defaults("text", list(colour = expanse_cols$white))
  
  ret <- ggplot2::theme_minimal(base_family = base_family, base_size = base_size)
  
  ret <- ret + theme(legend.background = element_blank())
  ret <- ret + theme(legend.key = element_blank())
  
  if (inherits(grid, "character") | grid == TRUE) {
    ret <- ret + theme(panel.grid = element_line(color = grid_col, size = 0.175))
    ret <- ret + theme(panel.grid.major = element_line(color = grid_col, size = 0.175))
    ret <- ret + theme(panel.grid.minor = element_line(color = grid_col, size = 0.125))
    
    if (inherits(grid, "character")) {
      if (regexpr("X", grid)[1] < 0) ret <- ret + theme(panel.grid.major.x = element_blank())
      if (regexpr("Y", grid)[1] < 0) ret <- ret + theme(panel.grid.major.y = element_blank())
      if (regexpr("x", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.x = element_blank())
      if (regexpr("y", grid)[1] < 0) ret <- ret + theme(panel.grid.minor.y = element_blank())
    }
  } else {
    ret <- ret + theme(panel.grid = element_blank())
  }
  
  if (inherits(axis, "character") | axis == TRUE) {
    ret <- ret + theme(axis.line = element_line(color = "white", size = 0.15))
    if (inherits(axis, "character")) {
      axis <- tolower(axis)
      if (regexpr("x", axis)[1] < 0) {
        ret <- ret + theme(axis.line.x = element_blank())
      } else {
        ret <- ret + theme(axis.line.x = element_line(color = axis_col, size = 0.15))
      }
      if (regexpr("y", axis)[1] < 0) {
        ret <- ret + theme(axis.line.y = element_blank())
      } else {
        ret <- ret + theme(axis.line.y = element_line(color = axis_col, size = 0.15))
      }
    } else {
      ret <- ret + theme(axis.line.x = element_line(color = axis_col, size = 0.15))
      ret <- ret + theme(axis.line.y = element_line(color = axis_col, size = 0.15))
    }
  } else {
    ret <- ret + theme(axis.line = element_blank())
  }
  
  if (!ticks) {
    ret <- ret + theme(axis.ticks = element_blank())
    ret <- ret + theme(axis.ticks.x = element_blank())
    ret <- ret + theme(axis.ticks.y = element_blank())
  } else {
    ret <- ret + theme(axis.ticks = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.x = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.y = element_line(size = 0.15))
    ret <- ret + theme(axis.ticks.length = grid::unit(5, "pt"))
  }
  
  xj <- switch(tolower(substr(axis_title_just, 1, 1)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  yj <- switch(tolower(substr(axis_title_just, 2, 2)), b = 0, l = 0, m = 0.5, c = 0.5, r = 1, t = 1)
  
  ret <- ret + theme(axis.text.x = element_text(size = axis_text_size, margin = margin(t = 0)))
  ret <- ret + theme(axis.text.y = element_text(size = axis_text_size, margin = margin(r = 0)))
  ret <- ret + theme(axis.title = element_text(size = axis_title_size, family = axis_title_family))
  ret <- ret + theme(axis.title.x = element_text(
    hjust = xj, size = axis_title_size,
    family = axis_title_family, face = axis_title_face
  ))
  ret <- ret + theme(axis.title.y = element_text(
    hjust = yj, size = axis_title_size,
    family = axis_title_family, face = axis_title_face
  ))
  ret <- ret + theme(strip.text = element_text(
    hjust = 0, size = strip_text_size,
    color = strip_text_col,
    face = strip_text_face, family = strip_text_family
  ))
  ret <- ret + theme(panel.spacing = panel_spacing)
  ret <- ret + theme(plot.title = element_text(
    hjust = 0, size = plot_title_size,
    margin = margin(b = plot_title_margin),
    family = plot_title_family, face = plot_title_face
  ))
  ret <- ret + theme(plot.subtitle = element_text(
    hjust = 0, size = subtitle_size,
    color = subtitle_col,
    margin = margin(b = subtitle_margin),
    family = subtitle_family, face = subtitle_face
  ))
  ret <- ret + theme(plot.caption = element_text(
    hjust = 1, size = caption_size,
    margin = margin(t = caption_margin),
    family = caption_family, face = caption_face
  ))
  ret <- ret + theme(plot.margin = plot_margin)
  
  ret <- ret +
    theme(plot.background = element_rect(fill = background_col, color = background_col)) +
    theme(panel.background = element_rect(fill = background_col, color = background_col)) +
    theme(rect = element_rect(fill = background_col, color = background_col)) +
    theme(text = element_text(color = text_col)) +
    theme(axis.text = element_text(color = text_col)) +
    theme(title = element_text(color = text_col)) +
    theme(plot.title = element_text(color = plot_title_col)) +
    theme(plot.subtitle = element_text(color = subtitle_col)) +
    theme(plot.caption = element_text(color = caption_col)) +
    theme(line = element_line(color = foreground_col)) +
    theme(axis.ticks = element_line(color = grid_col))
  
  ret
  
}


theme_xkcd <- function(){
  theme(panel.grid.major = element_blank(),
        axis.ticks = element_line(colour = "black"),
        panel.background = element_blank(),
        panel.grid.minor = element_blank(),
        legend.key = element_blank(),
        strip.background = element_blank(),
        text = element_text(size = 16, family = "xkcd"))
}