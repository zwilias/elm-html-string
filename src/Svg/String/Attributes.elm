module Svg.String.Attributes exposing
    ( accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
    , amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
    , azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
    , capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
    , d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
    , elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
    , format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
    , gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
    , ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
    , kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
    , limitingConeAngle, local, markerHeight, markerUnits, markerWidth
    , maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
    , name, numOctaves, offset, operator, order, orient, orientation, origin
    , overlinePosition, overlineThickness, panose1, path, pathLength
    , patternContentUnits, patternTransform, patternUnits, pointOrder, points
    , pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
    , primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
    , repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
    , rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
    , speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
    , strikethroughPosition, strikethroughThickness, string, style, surfaceScale
    , systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
    , transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
    , unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
    , values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
    , width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
    , xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
    , xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan
    , alignmentBaseline, baselineShift, clipPath, clipRule, clip
    , colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
    , color, cursor, direction, display, dominantBaseline, enableBackground
    , fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
    , fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
    , glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
    , kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
    , mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
    , stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
    , strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
    , textAnchor, textDecoration, textRendering, unicodeBidi, visibility
    , wordSpacing, writingMode
    )

{-|


# Regular attributes

@docs accentHeight, accelerate, accumulate, additive, alphabetic, allowReorder
@docs amplitude, arabicForm, ascent, attributeName, attributeType, autoReverse
@docs azimuth, baseFrequency, baseProfile, bbox, begin, bias, by, calcMode
@docs capHeight, class, clipPathUnits, contentScriptType, contentStyleType, cx, cy
@docs d, decelerate, descent, diffuseConstant, divisor, dur, dx, dy, edgeMode
@docs elevation, end, exponent, externalResourcesRequired, filterRes, filterUnits
@docs format, from, fx, fy, g1, g2, glyphName, glyphRef, gradientTransform
@docs gradientUnits, hanging, height, horizAdvX, horizOriginX, horizOriginY, id
@docs ideographic, in_, in2, intercept, k, k1, k2, k3, k4, kernelMatrix
@docs kernelUnitLength, keyPoints, keySplines, keyTimes, lang, lengthAdjust
@docs limitingConeAngle, local, markerHeight, markerUnits, markerWidth
@docs maskContentUnits, maskUnits, mathematical, max, media, method, min, mode
@docs name, numOctaves, offset, operator, order, orient, orientation, origin
@docs overlinePosition, overlineThickness, panose1, path, pathLength
@docs patternContentUnits, patternTransform, patternUnits, pointOrder, points
@docs pointsAtX, pointsAtY, pointsAtZ, preserveAlpha, preserveAspectRatio
@docs primitiveUnits, r, radius, refX, refY, renderingIntent, repeatCount
@docs repeatDur, requiredExtensions, requiredFeatures, restart, result, rotate
@docs rx, ry, scale, seed, slope, spacing, specularConstant, specularExponent
@docs speed, spreadMethod, startOffset, stdDeviation, stemh, stemv, stitchTiles
@docs strikethroughPosition, strikethroughThickness, string, style, surfaceScale
@docs systemLanguage, tableValues, target, targetX, targetY, textLength, title, to
@docs transform, type_, u1, u2, underlinePosition, underlineThickness, unicode
@docs unicodeRange, unitsPerEm, vAlphabetic, vHanging, vIdeographic, vMathematical
@docs values, version, vertAdvY, vertOriginX, vertOriginY, viewBox, viewTarget
@docs width, widths, x, xHeight, x1, x2, xChannelSelector, xlinkActuate
@docs xlinkArcrole, xlinkHref, xlinkRole, xlinkShow, xlinkTitle, xlinkType
@docs xmlBase, xmlLang, xmlSpace, y, y1, y2, yChannelSelector, z, zoomAndPan


# Presentation attributes

@docs alignmentBaseline, baselineShift, clipPath, clipRule, clip
@docs colorInterpolationFilters, colorInterpolation, colorProfile, colorRendering
@docs color, cursor, direction, display, dominantBaseline, enableBackground
@docs fillOpacity, fillRule, fill, filter, floodColor, floodOpacity, fontFamily
@docs fontSizeAdjust, fontSize, fontStretch, fontStyle, fontVariant, fontWeight
@docs glyphOrientationHorizontal, glyphOrientationVertical, imageRendering
@docs kerning, letterSpacing, lightingColor, markerEnd, markerMid, markerStart
@docs mask, opacity, overflow, pointerEvents, shapeRendering, stopColor
@docs stopOpacity, strokeDasharray, strokeDashoffset, strokeLinecap
@docs strokeLinejoin, strokeMiterlimit, strokeOpacity, strokeWidth, stroke
@docs textAnchor, textDecoration, textRendering, unicodeBidi, visibility
@docs wordSpacing, writingMode

-}

import Svg.String exposing (Attribute)
import VirtualDom.Types



-- REGULAR ATTRIBUTES


{-| -}
accentHeight : String -> Attribute msg
accentHeight =
    VirtualDom.Types.StringProperty "accent-height"


{-| -}
accelerate : String -> Attribute msg
accelerate =
    VirtualDom.Types.StringProperty "accelerate"


{-| -}
accumulate : String -> Attribute msg
accumulate =
    VirtualDom.Types.StringProperty "accumulate"


{-| -}
additive : String -> Attribute msg
additive =
    VirtualDom.Types.StringProperty "additive"


{-| -}
alphabetic : String -> Attribute msg
alphabetic =
    VirtualDom.Types.StringProperty "alphabetic"


{-| -}
allowReorder : String -> Attribute msg
allowReorder =
    VirtualDom.Types.StringProperty "allowReorder"


{-| -}
amplitude : String -> Attribute msg
amplitude =
    VirtualDom.Types.StringProperty "amplitude"


{-| -}
arabicForm : String -> Attribute msg
arabicForm =
    VirtualDom.Types.StringProperty "arabic-form"


{-| -}
ascent : String -> Attribute msg
ascent =
    VirtualDom.Types.StringProperty "ascent"


{-| -}
attributeName : String -> Attribute msg
attributeName =
    VirtualDom.Types.StringProperty "attributeName"


{-| -}
attributeType : String -> Attribute msg
attributeType =
    VirtualDom.Types.StringProperty "attributeType"


{-| -}
autoReverse : String -> Attribute msg
autoReverse =
    VirtualDom.Types.StringProperty "autoReverse"


{-| -}
azimuth : String -> Attribute msg
azimuth =
    VirtualDom.Types.StringProperty "azimuth"


{-| -}
baseFrequency : String -> Attribute msg
baseFrequency =
    VirtualDom.Types.StringProperty "baseFrequency"


{-| -}
baseProfile : String -> Attribute msg
baseProfile =
    VirtualDom.Types.StringProperty "baseProfile"


{-| -}
bbox : String -> Attribute msg
bbox =
    VirtualDom.Types.StringProperty "bbox"


{-| -}
begin : String -> Attribute msg
begin =
    VirtualDom.Types.StringProperty "begin"


{-| -}
bias : String -> Attribute msg
bias =
    VirtualDom.Types.StringProperty "bias"


{-| -}
by : String -> Attribute msg
by value =
    VirtualDom.Types.StringProperty "by" value


{-| -}
calcMode : String -> Attribute msg
calcMode =
    VirtualDom.Types.StringProperty "calcMode"


{-| -}
capHeight : String -> Attribute msg
capHeight =
    VirtualDom.Types.StringProperty "cap-height"


{-| -}
class : String -> Attribute msg
class =
    VirtualDom.Types.StringProperty "className"


{-| -}
clipPathUnits : String -> Attribute msg
clipPathUnits =
    VirtualDom.Types.StringProperty "clipPathUnits"


{-| -}
contentScriptType : String -> Attribute msg
contentScriptType =
    VirtualDom.Types.StringProperty "contentScriptType"


{-| -}
contentStyleType : String -> Attribute msg
contentStyleType =
    VirtualDom.Types.StringProperty "contentStyleType"


{-| -}
cx : String -> Attribute msg
cx =
    VirtualDom.Types.StringProperty "cx"


{-| -}
cy : String -> Attribute msg
cy =
    VirtualDom.Types.StringProperty "cy"


{-| -}
d : String -> Attribute msg
d =
    VirtualDom.Types.StringProperty "d"


{-| -}
decelerate : String -> Attribute msg
decelerate =
    VirtualDom.Types.StringProperty "decelerate"


{-| -}
descent : String -> Attribute msg
descent =
    VirtualDom.Types.StringProperty "descent"


{-| -}
diffuseConstant : String -> Attribute msg
diffuseConstant =
    VirtualDom.Types.StringProperty "diffuseConstant"


{-| -}
divisor : String -> Attribute msg
divisor =
    VirtualDom.Types.StringProperty "divisor"


{-| -}
dur : String -> Attribute msg
dur =
    VirtualDom.Types.StringProperty "dur"


{-| -}
dx : String -> Attribute msg
dx =
    VirtualDom.Types.StringProperty "dx"


{-| -}
dy : String -> Attribute msg
dy =
    VirtualDom.Types.StringProperty "dy"


{-| -}
edgeMode : String -> Attribute msg
edgeMode =
    VirtualDom.Types.StringProperty "edgeMode"


{-| -}
elevation : String -> Attribute msg
elevation =
    VirtualDom.Types.StringProperty "elevation"


{-| -}
end : String -> Attribute msg
end =
    VirtualDom.Types.StringProperty "end"


{-| -}
exponent : String -> Attribute msg
exponent =
    VirtualDom.Types.StringProperty "exponent"


{-| -}
externalResourcesRequired : String -> Attribute msg
externalResourcesRequired =
    VirtualDom.Types.StringProperty "externalResourcesRequired"


{-| -}
filterRes : String -> Attribute msg
filterRes =
    VirtualDom.Types.StringProperty "filterRes"


{-| -}
filterUnits : String -> Attribute msg
filterUnits =
    VirtualDom.Types.StringProperty "filterUnits"


{-| -}
format : String -> Attribute msg
format =
    VirtualDom.Types.StringProperty "format"


{-| -}
from : String -> Attribute msg
from value =
    VirtualDom.Types.StringProperty "from" value


{-| -}
fx : String -> Attribute msg
fx =
    VirtualDom.Types.StringProperty "fx"


{-| -}
fy : String -> Attribute msg
fy =
    VirtualDom.Types.StringProperty "fy"


{-| -}
g1 : String -> Attribute msg
g1 =
    VirtualDom.Types.StringProperty "g1"


{-| -}
g2 : String -> Attribute msg
g2 =
    VirtualDom.Types.StringProperty "g2"


{-| -}
glyphName : String -> Attribute msg
glyphName =
    VirtualDom.Types.StringProperty "glyph-name"


{-| -}
glyphRef : String -> Attribute msg
glyphRef =
    VirtualDom.Types.StringProperty "glyphRef"


{-| -}
gradientTransform : String -> Attribute msg
gradientTransform =
    VirtualDom.Types.StringProperty "gradientTransform"


{-| -}
gradientUnits : String -> Attribute msg
gradientUnits =
    VirtualDom.Types.StringProperty "gradientUnits"


{-| -}
hanging : String -> Attribute msg
hanging =
    VirtualDom.Types.StringProperty "hanging"


{-| -}
height : String -> Attribute msg
height =
    VirtualDom.Types.StringProperty "height"


{-| -}
horizAdvX : String -> Attribute msg
horizAdvX =
    VirtualDom.Types.StringProperty "horiz-adv-x"


{-| -}
horizOriginX : String -> Attribute msg
horizOriginX =
    VirtualDom.Types.StringProperty "horiz-origin-x"


{-| -}
horizOriginY : String -> Attribute msg
horizOriginY =
    VirtualDom.Types.StringProperty "horiz-origin-y"


{-| -}
id : String -> Attribute msg
id =
    VirtualDom.Types.StringProperty "id"


{-| -}
ideographic : String -> Attribute msg
ideographic =
    VirtualDom.Types.StringProperty "ideographic"


{-| -}
in_ : String -> Attribute msg
in_ =
    VirtualDom.Types.StringProperty "in"


{-| -}
in2 : String -> Attribute msg
in2 =
    VirtualDom.Types.StringProperty "in2"


{-| -}
intercept : String -> Attribute msg
intercept =
    VirtualDom.Types.StringProperty "intercept"


{-| -}
k : String -> Attribute msg
k =
    VirtualDom.Types.StringProperty "k"


{-| -}
k1 : String -> Attribute msg
k1 =
    VirtualDom.Types.StringProperty "k1"


{-| -}
k2 : String -> Attribute msg
k2 =
    VirtualDom.Types.StringProperty "k2"


{-| -}
k3 : String -> Attribute msg
k3 =
    VirtualDom.Types.StringProperty "k3"


{-| -}
k4 : String -> Attribute msg
k4 =
    VirtualDom.Types.StringProperty "k4"


{-| -}
kernelMatrix : String -> Attribute msg
kernelMatrix =
    VirtualDom.Types.StringProperty "kernelMatrix"


{-| -}
kernelUnitLength : String -> Attribute msg
kernelUnitLength =
    VirtualDom.Types.StringProperty "kernelUnitLength"


{-| -}
keyPoints : String -> Attribute msg
keyPoints =
    VirtualDom.Types.StringProperty "keyPoints"


{-| -}
keySplines : String -> Attribute msg
keySplines =
    VirtualDom.Types.StringProperty "keySplines"


{-| -}
keyTimes : String -> Attribute msg
keyTimes =
    VirtualDom.Types.StringProperty "keyTimes"


{-| -}
lang : String -> Attribute msg
lang =
    VirtualDom.Types.StringProperty "lang"


{-| -}
lengthAdjust : String -> Attribute msg
lengthAdjust =
    VirtualDom.Types.StringProperty "lengthAdjust"


{-| -}
limitingConeAngle : String -> Attribute msg
limitingConeAngle =
    VirtualDom.Types.StringProperty "limitingConeAngle"


{-| -}
local : String -> Attribute msg
local =
    VirtualDom.Types.StringProperty "local"


{-| -}
markerHeight : String -> Attribute msg
markerHeight =
    VirtualDom.Types.StringProperty "markerHeight"


{-| -}
markerUnits : String -> Attribute msg
markerUnits =
    VirtualDom.Types.StringProperty "markerUnits"


{-| -}
markerWidth : String -> Attribute msg
markerWidth =
    VirtualDom.Types.StringProperty "markerWidth"


{-| -}
maskContentUnits : String -> Attribute msg
maskContentUnits =
    VirtualDom.Types.StringProperty "maskContentUnits"


{-| -}
maskUnits : String -> Attribute msg
maskUnits =
    VirtualDom.Types.StringProperty "maskUnits"


{-| -}
mathematical : String -> Attribute msg
mathematical =
    VirtualDom.Types.StringProperty "mathematical"


{-| -}
max : String -> Attribute msg
max =
    VirtualDom.Types.StringProperty "max"


{-| -}
media : String -> Attribute msg
media =
    VirtualDom.Types.StringProperty "media"


{-| -}
method : String -> Attribute msg
method =
    VirtualDom.Types.StringProperty "method"


{-| -}
min : String -> Attribute msg
min =
    VirtualDom.Types.StringProperty "min"


{-| -}
mode : String -> Attribute msg
mode =
    VirtualDom.Types.StringProperty "mode"


{-| -}
name : String -> Attribute msg
name =
    VirtualDom.Types.StringProperty "name"


{-| -}
numOctaves : String -> Attribute msg
numOctaves =
    VirtualDom.Types.StringProperty "numOctaves"


{-| -}
offset : String -> Attribute msg
offset =
    VirtualDom.Types.StringProperty "offset"


{-| -}
operator : String -> Attribute msg
operator =
    VirtualDom.Types.StringProperty "operator"


{-| -}
order : String -> Attribute msg
order =
    VirtualDom.Types.StringProperty "order"


{-| -}
orient : String -> Attribute msg
orient =
    VirtualDom.Types.StringProperty "orient"


{-| -}
orientation : String -> Attribute msg
orientation =
    VirtualDom.Types.StringProperty "orientation"


{-| -}
origin : String -> Attribute msg
origin =
    VirtualDom.Types.StringProperty "origin"


{-| -}
overlinePosition : String -> Attribute msg
overlinePosition =
    VirtualDom.Types.StringProperty "overline-position"


{-| -}
overlineThickness : String -> Attribute msg
overlineThickness =
    VirtualDom.Types.StringProperty "overline-thickness"


{-| -}
panose1 : String -> Attribute msg
panose1 =
    VirtualDom.Types.StringProperty "panose-1"


{-| -}
path : String -> Attribute msg
path =
    VirtualDom.Types.StringProperty "path"


{-| -}
pathLength : String -> Attribute msg
pathLength =
    VirtualDom.Types.StringProperty "pathLength"


{-| -}
patternContentUnits : String -> Attribute msg
patternContentUnits =
    VirtualDom.Types.StringProperty "patternContentUnits"


{-| -}
patternTransform : String -> Attribute msg
patternTransform =
    VirtualDom.Types.StringProperty "patternTransform"


{-| -}
patternUnits : String -> Attribute msg
patternUnits =
    VirtualDom.Types.StringProperty "patternUnits"


{-| -}
pointOrder : String -> Attribute msg
pointOrder =
    VirtualDom.Types.StringProperty "point-order"


{-| -}
points : String -> Attribute msg
points =
    VirtualDom.Types.StringProperty "points"


{-| -}
pointsAtX : String -> Attribute msg
pointsAtX =
    VirtualDom.Types.StringProperty "pointsAtX"


{-| -}
pointsAtY : String -> Attribute msg
pointsAtY =
    VirtualDom.Types.StringProperty "pointsAtY"


{-| -}
pointsAtZ : String -> Attribute msg
pointsAtZ =
    VirtualDom.Types.StringProperty "pointsAtZ"


{-| -}
preserveAlpha : String -> Attribute msg
preserveAlpha =
    VirtualDom.Types.StringProperty "preserveAlpha"


{-| -}
preserveAspectRatio : String -> Attribute msg
preserveAspectRatio =
    VirtualDom.Types.StringProperty "preserveAspectRatio"


{-| -}
primitiveUnits : String -> Attribute msg
primitiveUnits =
    VirtualDom.Types.StringProperty "primitiveUnits"


{-| -}
r : String -> Attribute msg
r =
    VirtualDom.Types.StringProperty "r"


{-| -}
radius : String -> Attribute msg
radius =
    VirtualDom.Types.StringProperty "radius"


{-| -}
refX : String -> Attribute msg
refX =
    VirtualDom.Types.StringProperty "refX"


{-| -}
refY : String -> Attribute msg
refY =
    VirtualDom.Types.StringProperty "refY"


{-| -}
renderingIntent : String -> Attribute msg
renderingIntent =
    VirtualDom.Types.StringProperty "rendering-intent"


{-| -}
repeatCount : String -> Attribute msg
repeatCount =
    VirtualDom.Types.StringProperty "repeatCount"


{-| -}
repeatDur : String -> Attribute msg
repeatDur =
    VirtualDom.Types.StringProperty "repeatDur"


{-| -}
requiredExtensions : String -> Attribute msg
requiredExtensions =
    VirtualDom.Types.StringProperty "requiredExtensions"


{-| -}
requiredFeatures : String -> Attribute msg
requiredFeatures =
    VirtualDom.Types.StringProperty "requiredFeatures"


{-| -}
restart : String -> Attribute msg
restart =
    VirtualDom.Types.StringProperty "restart"


{-| -}
result : String -> Attribute msg
result =
    VirtualDom.Types.StringProperty "result"


{-| -}
rotate : String -> Attribute msg
rotate =
    VirtualDom.Types.StringProperty "rotate"


{-| -}
rx : String -> Attribute msg
rx =
    VirtualDom.Types.StringProperty "rx"


{-| -}
ry : String -> Attribute msg
ry =
    VirtualDom.Types.StringProperty "ry"


{-| -}
scale : String -> Attribute msg
scale =
    VirtualDom.Types.StringProperty "scale"


{-| -}
seed : String -> Attribute msg
seed =
    VirtualDom.Types.StringProperty "seed"


{-| -}
slope : String -> Attribute msg
slope =
    VirtualDom.Types.StringProperty "slope"


{-| -}
spacing : String -> Attribute msg
spacing =
    VirtualDom.Types.StringProperty "spacing"


{-| -}
specularConstant : String -> Attribute msg
specularConstant =
    VirtualDom.Types.StringProperty "specularConstant"


{-| -}
specularExponent : String -> Attribute msg
specularExponent =
    VirtualDom.Types.StringProperty "specularExponent"


{-| -}
speed : String -> Attribute msg
speed =
    VirtualDom.Types.StringProperty "speed"


{-| -}
spreadMethod : String -> Attribute msg
spreadMethod =
    VirtualDom.Types.StringProperty "spreadMethod"


{-| -}
startOffset : String -> Attribute msg
startOffset =
    VirtualDom.Types.StringProperty "startOffset"


{-| -}
stdDeviation : String -> Attribute msg
stdDeviation =
    VirtualDom.Types.StringProperty "stdDeviation"


{-| -}
stemh : String -> Attribute msg
stemh =
    VirtualDom.Types.StringProperty "stemh"


{-| -}
stemv : String -> Attribute msg
stemv =
    VirtualDom.Types.StringProperty "stemv"


{-| -}
stitchTiles : String -> Attribute msg
stitchTiles =
    VirtualDom.Types.StringProperty "stitchTiles"


{-| -}
strikethroughPosition : String -> Attribute msg
strikethroughPosition =
    VirtualDom.Types.StringProperty "strikethrough-position"


{-| -}
strikethroughThickness : String -> Attribute msg
strikethroughThickness =
    VirtualDom.Types.StringProperty "strikethrough-thickness"


{-| -}
string : String -> Attribute msg
string =
    VirtualDom.Types.StringProperty "string"


{-| -}
style : String -> Attribute msg
style =
    VirtualDom.Types.StringProperty "style"


{-| -}
surfaceScale : String -> Attribute msg
surfaceScale =
    VirtualDom.Types.StringProperty "surfaceScale"


{-| -}
systemLanguage : String -> Attribute msg
systemLanguage =
    VirtualDom.Types.StringProperty "systemLanguage"


{-| -}
tableValues : String -> Attribute msg
tableValues =
    VirtualDom.Types.StringProperty "tableValues"


{-| -}
target : String -> Attribute msg
target =
    VirtualDom.Types.StringProperty "target"


{-| -}
targetX : String -> Attribute msg
targetX =
    VirtualDom.Types.StringProperty "targetX"


{-| -}
targetY : String -> Attribute msg
targetY =
    VirtualDom.Types.StringProperty "targetY"


{-| -}
textLength : String -> Attribute msg
textLength =
    VirtualDom.Types.StringProperty "textLength"


{-| -}
title : String -> Attribute msg
title =
    VirtualDom.Types.StringProperty "title"


{-| -}
to : String -> Attribute msg
to value =
    VirtualDom.Types.StringProperty "to" value


{-| -}
transform : String -> Attribute msg
transform =
    VirtualDom.Types.StringProperty "transform"


{-| -}
type_ : String -> Attribute msg
type_ =
    VirtualDom.Types.StringProperty "type"


{-| -}
u1 : String -> Attribute msg
u1 =
    VirtualDom.Types.StringProperty "u1"


{-| -}
u2 : String -> Attribute msg
u2 =
    VirtualDom.Types.StringProperty "u2"


{-| -}
underlinePosition : String -> Attribute msg
underlinePosition =
    VirtualDom.Types.StringProperty "underline-position"


{-| -}
underlineThickness : String -> Attribute msg
underlineThickness =
    VirtualDom.Types.StringProperty "underline-thickness"


{-| -}
unicode : String -> Attribute msg
unicode =
    VirtualDom.Types.StringProperty "unicode"


{-| -}
unicodeRange : String -> Attribute msg
unicodeRange =
    VirtualDom.Types.StringProperty "unicode-range"


{-| -}
unitsPerEm : String -> Attribute msg
unitsPerEm =
    VirtualDom.Types.StringProperty "units-per-em"


{-| -}
vAlphabetic : String -> Attribute msg
vAlphabetic =
    VirtualDom.Types.StringProperty "v-alphabetic"


{-| -}
vHanging : String -> Attribute msg
vHanging =
    VirtualDom.Types.StringProperty "v-hanging"


{-| -}
vIdeographic : String -> Attribute msg
vIdeographic =
    VirtualDom.Types.StringProperty "v-ideographic"


{-| -}
vMathematical : String -> Attribute msg
vMathematical =
    VirtualDom.Types.StringProperty "v-mathematical"


{-| -}
values : String -> Attribute msg
values value =
    VirtualDom.Types.StringProperty "values" value


{-| -}
version : String -> Attribute msg
version =
    VirtualDom.Types.StringProperty "version"


{-| -}
vertAdvY : String -> Attribute msg
vertAdvY =
    VirtualDom.Types.StringProperty "vert-adv-y"


{-| -}
vertOriginX : String -> Attribute msg
vertOriginX =
    VirtualDom.Types.StringProperty "vert-origin-x"


{-| -}
vertOriginY : String -> Attribute msg
vertOriginY =
    VirtualDom.Types.StringProperty "vert-origin-y"


{-| -}
viewBox : String -> Attribute msg
viewBox =
    VirtualDom.Types.StringProperty "viewBox"


{-| -}
viewTarget : String -> Attribute msg
viewTarget =
    VirtualDom.Types.StringProperty "viewTarget"


{-| -}
width : String -> Attribute msg
width =
    VirtualDom.Types.StringProperty "width"


{-| -}
widths : String -> Attribute msg
widths =
    VirtualDom.Types.StringProperty "widths"


{-| -}
x : String -> Attribute msg
x =
    VirtualDom.Types.StringProperty "x"


{-| -}
xHeight : String -> Attribute msg
xHeight =
    VirtualDom.Types.StringProperty "x-height"


{-| -}
x1 : String -> Attribute msg
x1 =
    VirtualDom.Types.StringProperty "x1"


{-| -}
x2 : String -> Attribute msg
x2 =
    VirtualDom.Types.StringProperty "x2"


{-| -}
xChannelSelector : String -> Attribute msg
xChannelSelector =
    VirtualDom.Types.StringProperty "xChannelSelector"


{-| -}
xlinkActuate : String -> Attribute msg
xlinkActuate =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:actuate"


{-| -}
xlinkArcrole : String -> Attribute msg
xlinkArcrole =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:arcrole"


{-| -}
xlinkHref : String -> Attribute msg
xlinkHref value =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:href" value


{-| -}
xlinkRole : String -> Attribute msg
xlinkRole =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:role"


{-| -}
xlinkShow : String -> Attribute msg
xlinkShow =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:show"


{-| -}
xlinkTitle : String -> Attribute msg
xlinkTitle =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:title"


{-| -}
xlinkType : String -> Attribute msg
xlinkType =
    VirtualDom.Types.AttributeNS "http://www.w3.org/1999/xlink" "xlink:type"


{-| -}
xmlBase : String -> Attribute msg
xmlBase =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:base"


{-| -}
xmlLang : String -> Attribute msg
xmlLang =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:lang"


{-| -}
xmlSpace : String -> Attribute msg
xmlSpace =
    VirtualDom.Types.AttributeNS "http://www.w3.org/XML/1998/namespace" "xml:space"


{-| -}
y : String -> Attribute msg
y =
    VirtualDom.Types.StringProperty "y"


{-| -}
y1 : String -> Attribute msg
y1 =
    VirtualDom.Types.StringProperty "y1"


{-| -}
y2 : String -> Attribute msg
y2 =
    VirtualDom.Types.StringProperty "y2"


{-| -}
yChannelSelector : String -> Attribute msg
yChannelSelector =
    VirtualDom.Types.StringProperty "yChannelSelector"


{-| -}
z : String -> Attribute msg
z =
    VirtualDom.Types.StringProperty "z"


{-| -}
zoomAndPan : String -> Attribute msg
zoomAndPan =
    VirtualDom.Types.StringProperty "zoomAndPan"



-- PRESENTATION ATTRIBUTES


{-| -}
alignmentBaseline : String -> Attribute msg
alignmentBaseline =
    VirtualDom.Types.StringProperty "alignment-baseline"


{-| -}
baselineShift : String -> Attribute msg
baselineShift =
    VirtualDom.Types.StringProperty "baseline-shift"


{-| -}
clipPath : String -> Attribute msg
clipPath =
    VirtualDom.Types.StringProperty "clip-path"


{-| -}
clipRule : String -> Attribute msg
clipRule =
    VirtualDom.Types.StringProperty "clip-rule"


{-| -}
clip : String -> Attribute msg
clip =
    VirtualDom.Types.StringProperty "clip"


{-| -}
colorInterpolationFilters : String -> Attribute msg
colorInterpolationFilters =
    VirtualDom.Types.StringProperty "color-interpolation-filters"


{-| -}
colorInterpolation : String -> Attribute msg
colorInterpolation =
    VirtualDom.Types.StringProperty "color-interpolation"


{-| -}
colorProfile : String -> Attribute msg
colorProfile =
    VirtualDom.Types.StringProperty "color-profile"


{-| -}
colorRendering : String -> Attribute msg
colorRendering =
    VirtualDom.Types.StringProperty "color-rendering"


{-| -}
color : String -> Attribute msg
color =
    VirtualDom.Types.StringProperty "color"


{-| -}
cursor : String -> Attribute msg
cursor =
    VirtualDom.Types.StringProperty "cursor"


{-| -}
direction : String -> Attribute msg
direction =
    VirtualDom.Types.StringProperty "direction"


{-| -}
display : String -> Attribute msg
display =
    VirtualDom.Types.StringProperty "display"


{-| -}
dominantBaseline : String -> Attribute msg
dominantBaseline =
    VirtualDom.Types.StringProperty "dominant-baseline"


{-| -}
enableBackground : String -> Attribute msg
enableBackground =
    VirtualDom.Types.StringProperty "enable-background"


{-| -}
fillOpacity : String -> Attribute msg
fillOpacity =
    VirtualDom.Types.StringProperty "fill-opacity"


{-| -}
fillRule : String -> Attribute msg
fillRule =
    VirtualDom.Types.StringProperty "fill-rule"


{-| -}
fill : String -> Attribute msg
fill =
    VirtualDom.Types.StringProperty "fill"


{-| -}
filter : String -> Attribute msg
filter =
    VirtualDom.Types.StringProperty "filter"


{-| -}
floodColor : String -> Attribute msg
floodColor =
    VirtualDom.Types.StringProperty "flood-color"


{-| -}
floodOpacity : String -> Attribute msg
floodOpacity =
    VirtualDom.Types.StringProperty "flood-opacity"


{-| -}
fontFamily : String -> Attribute msg
fontFamily =
    VirtualDom.Types.StringProperty "font-family"


{-| -}
fontSizeAdjust : String -> Attribute msg
fontSizeAdjust =
    VirtualDom.Types.StringProperty "font-size-adjust"


{-| -}
fontSize : String -> Attribute msg
fontSize =
    VirtualDom.Types.StringProperty "font-size"


{-| -}
fontStretch : String -> Attribute msg
fontStretch =
    VirtualDom.Types.StringProperty "font-stretch"


{-| -}
fontStyle : String -> Attribute msg
fontStyle =
    VirtualDom.Types.StringProperty "font-style"


{-| -}
fontVariant : String -> Attribute msg
fontVariant =
    VirtualDom.Types.StringProperty "font-variant"


{-| -}
fontWeight : String -> Attribute msg
fontWeight =
    VirtualDom.Types.StringProperty "font-weight"


{-| -}
glyphOrientationHorizontal : String -> Attribute msg
glyphOrientationHorizontal =
    VirtualDom.Types.StringProperty "glyph-orientation-horizontal"


{-| -}
glyphOrientationVertical : String -> Attribute msg
glyphOrientationVertical =
    VirtualDom.Types.StringProperty "glyph-orientation-vertical"


{-| -}
imageRendering : String -> Attribute msg
imageRendering =
    VirtualDom.Types.StringProperty "image-rendering"


{-| -}
kerning : String -> Attribute msg
kerning =
    VirtualDom.Types.StringProperty "kerning"


{-| -}
letterSpacing : String -> Attribute msg
letterSpacing =
    VirtualDom.Types.StringProperty "letter-spacing"


{-| -}
lightingColor : String -> Attribute msg
lightingColor =
    VirtualDom.Types.StringProperty "lighting-color"


{-| -}
markerEnd : String -> Attribute msg
markerEnd =
    VirtualDom.Types.StringProperty "marker-end"


{-| -}
markerMid : String -> Attribute msg
markerMid =
    VirtualDom.Types.StringProperty "marker-mid"


{-| -}
markerStart : String -> Attribute msg
markerStart =
    VirtualDom.Types.StringProperty "marker-start"


{-| -}
mask : String -> Attribute msg
mask =
    VirtualDom.Types.StringProperty "mask"


{-| -}
opacity : String -> Attribute msg
opacity =
    VirtualDom.Types.StringProperty "opacity"


{-| -}
overflow : String -> Attribute msg
overflow =
    VirtualDom.Types.StringProperty "overflow"


{-| -}
pointerEvents : String -> Attribute msg
pointerEvents =
    VirtualDom.Types.StringProperty "pointer-events"


{-| -}
shapeRendering : String -> Attribute msg
shapeRendering =
    VirtualDom.Types.StringProperty "shape-rendering"


{-| -}
stopColor : String -> Attribute msg
stopColor =
    VirtualDom.Types.StringProperty "stop-color"


{-| -}
stopOpacity : String -> Attribute msg
stopOpacity =
    VirtualDom.Types.StringProperty "stop-opacity"


{-| -}
strokeDasharray : String -> Attribute msg
strokeDasharray =
    VirtualDom.Types.StringProperty "stroke-dasharray"


{-| -}
strokeDashoffset : String -> Attribute msg
strokeDashoffset =
    VirtualDom.Types.StringProperty "stroke-dashoffset"


{-| -}
strokeLinecap : String -> Attribute msg
strokeLinecap =
    VirtualDom.Types.StringProperty "stroke-linecap"


{-| -}
strokeLinejoin : String -> Attribute msg
strokeLinejoin =
    VirtualDom.Types.StringProperty "stroke-linejoin"


{-| -}
strokeMiterlimit : String -> Attribute msg
strokeMiterlimit =
    VirtualDom.Types.StringProperty "stroke-miterlimit"


{-| -}
strokeOpacity : String -> Attribute msg
strokeOpacity =
    VirtualDom.Types.StringProperty "stroke-opacity"


{-| -}
strokeWidth : String -> Attribute msg
strokeWidth =
    VirtualDom.Types.StringProperty "stroke-width"


{-| -}
stroke : String -> Attribute msg
stroke =
    VirtualDom.Types.StringProperty "stroke"


{-| -}
textAnchor : String -> Attribute msg
textAnchor =
    VirtualDom.Types.StringProperty "text-anchor"


{-| -}
textDecoration : String -> Attribute msg
textDecoration =
    VirtualDom.Types.StringProperty "text-decoration"


{-| -}
textRendering : String -> Attribute msg
textRendering =
    VirtualDom.Types.StringProperty "text-rendering"


{-| -}
unicodeBidi : String -> Attribute msg
unicodeBidi =
    VirtualDom.Types.StringProperty "unicode-bidi"


{-| -}
visibility : String -> Attribute msg
visibility =
    VirtualDom.Types.StringProperty "visibility"


{-| -}
wordSpacing : String -> Attribute msg
wordSpacing =
    VirtualDom.Types.StringProperty "word-spacing"


{-| -}
writingMode : String -> Attribute msg
writingMode =
    VirtualDom.Types.StringProperty "writing-mode"
