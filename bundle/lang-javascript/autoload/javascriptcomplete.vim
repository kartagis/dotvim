" (A more up-to-date) Vim completion script
" Language:  JavaScript
" Maintainer:  Jake Eaton (1995eaton@gmail.com)
" Last Change:  2014 Jun 23
" Original Maintainer: Mikolaj Machowski ( mikmach AT wp DOT pl )

" PIXI.js (http://www.pixijs.com/) support
let s:pixis = ['AbstractFilter', 'AjaxRequest', 'AlphaMaskFilter', 'AsciiFilter', 'AssetLoader', 'AtlasLoader', 'autoDetectRecommendedRenderer', 'autoDetectRenderer', 'BaseTexture', 'BitmapFontLoader', 'BitmapText', 'BlurFilter', 'BlurXFilter', 'BlurYFilter', 'CanvasBuffer', 'CanvasGraphics', 'CanvasMaskManager', 'CanvasRenderer', 'CanvasTinter', 'Circle', 'ColorMatrixFilter', 'ColorStepFilter', 'ComplexPrimitiveShader', 'ConvolutionFilter', 'CrossHatchFilter', 'DisplacementFilter', 'DisplayObject', 'DisplayObjectContainer', 'DotScreenFilter', 'Ellipse', 'Event', 'EventTarget', 'FilterBlock', 'FilterTexture', 'Graphics', 'GraphicsData', 'GrayFilter', 'ImageLoader', 'InteractionData', 'InteractionManager', 'InvertFilter', 'JsonLoader', 'Matrix', 'MovieClip', 'NoiseFilter', 'NormalMapFilter', 'PixelateFilter', 'PixiFastShader', 'PixiShader', 'Point', 'Polygon', 'PolyK', 'PrimitiveShader', 'Rectangle', 'RenderTexture', 'RGBSplitFilter', 'Rope', 'SepiaFilter', 'SmartBlurFilter', 'Spine', 'SpineLoader', 'Sprite', 'SpriteBatch', 'SpriteSheetLoader', 'Stage', 'Strip', 'StripShader', 'Text', 'Texture', 'TilingSprite', 'TiltShiftFilter', 'TiltShiftXFilter', 'TiltShiftYFilter', 'TwistFilter', 'WebGLBlendModeManager', 'WebGLFastSpriteBatch', 'WebGLFilterManager', 'WebGLGraphics', 'WebGLGraphicsData', 'WebGLMaskManager', 'WebGLRenderer', 'WebGLShaderManager', 'WebGLSpriteBatch', 'WebGLStencilManager']
let s:pixi_abstractfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_ajaxrequests = [ 'bind(', 'cancelAnimationFrame(', 'canUseNewCanvasBlendModes(', 'getNextPowerOfTwo(', 'hex2rgb(', 'requestAnimationFrame(', 'rgb2hex(' ]
let s:pixi_alphamaskfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_asciifilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'size', 'uniforms' ]
let s:pixi_assetloaders = [ '_getDataType(', 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'onAssetLoaded(', 'once(', 'removeAllListeners(', 'assetURLs', 'crossorigin', 'loadersByType' ]
let s:pixi_atlasloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'onAtlasLoaded(', 'once(', 'onError(', 'onLoaded(', 'removeAllListeners(' ]
let s:pixi_basetextures = [ 'destroy(', 'dirty(', 'emit(', 'fromCanvas(', 'fromImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'once(', 'removeAllListeners(', 'unloadFromGPU(', 'updateSourceImage(', '_dirty', '_glTextures', '_powerOf2', 'hasLoaded', 'height', 'imageUrl', 'premultipliedAlpha', 'resolution', 'scaleMode', 'source', 'width' ]
let s:pixi_bitmapfontloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'onXMLLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'texture', 'url' ]
let s:pixi_bitmaptexts = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setStyle(', 'setText(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateText(', 'updateTransform(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_pool', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'textHeight', 'textWidth', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_blurfilters = [ 'syncUniforms(', 'blur', 'blurX', 'blurY', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_blurxfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_bluryfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_canvasbuffers = [ 'clear(', 'resize(', 'canvas', 'context', 'height', 'width' ]
let s:pixi_canvasmaskmanagers = [ 'popMask(', 'pushMask(' ]
let s:pixi_canvasrenderers = [ 'destroy(', 'mapBlendModes(', 'render(', 'renderDisplayObject(', 'resize(', 'autoResize', 'CanvasMaskManager', 'clearBeforeRender', 'context', 'count', 'height', 'refresh', 'renderSession', 'resolution', 'transparent', 'type', 'view', 'width' ]
let s:pixi_canvastinters = [ 'getTintedTexture(', 'roundColor(', 'tintMethod(', 'tintPerPixel(', 'tintWithMultiply(', 'tintWithOverlay(', 'cacheStepsPerColorChannel', 'canUseMultiply', 'convertTintToImage' ]
let s:pixi_circles = [ 'clone(', 'contains(', 'getBounds(', 'radius', 'x', 'y' ]
let s:pixi_colormatrixfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'matrix', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_colorstepfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'step', 'uniforms' ]
let s:pixi_complexprimitiveshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_convolutionfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'height', 'matrix', 'padding', 'passes', 'shaders', 'uniforms', 'width' ]
let s:pixi_crosshatchfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_displacementfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'offset', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_displayobjectcontainers = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_dotscreenfilters = [ 'syncUniforms(', 'angle', 'dirty', 'fragmentSrc', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_ellipses = [ 'clone(', 'contains(', 'getBounds(', 'height', 'width', 'x', 'y' ]
let s:pixi_events = [ 'stopImmediatePropagation(', 'stopPropagation(', 'data', 'stopped', 'stoppedImmediate', 'target', 'timeStamp', 'type' ]
let s:pixi_eventtargets = [ 'emit(', 'listeners(', 'mixin(', 'off(', 'on(', 'once(', 'removeAllListeners(' ]
let s:pixi_filterblocks = [ 'renderable', 'visible' ]
let s:pixi_filtertextures = [ 'clear(', 'destroy(', 'resize(', 'frameBuffer', 'gl', 'scaleMode', 'texture' ]
let s:pixi_graphicss = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'arc(', 'beginFill(', 'bezierCurveTo(', 'clear(', 'click(', 'destroyCachedSprite(', 'drawCircle(', 'drawEllipse(', 'drawPolygon(', 'drawRect(', 'drawRoundedRect(', 'drawShape(', 'endFill(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'lineStyle(', 'lineTo(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'moveTo(', 'quadraticCurveTo(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateCachedSpriteTexture(', 'updateLocalBounds(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', '_webGL', 'alpha', 'blendMode', 'boundsPadding', 'buttonMode', 'cacheAsBitmap', 'cachedSpriteDirty', 'children', 'currentPath', 'defaultCursor', 'dirty', 'fillAlpha', 'filterArea', 'filters', 'graphicsData', 'height', 'hitArea', 'interactive', 'isMask', 'lineColor', 'lineWidth', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'tint', 'visible', 'webGLDirty', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_grayfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'gray', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_imageloaders = [ 'emit(', 'listeners(', 'load(', 'loadFramedSpriteSheet(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'frames', 'texture' ]
let s:pixi_interactiondatas = [ 'getLocalPosition(', 'global', 'originalEvent', 'target' ]
let s:pixi_interactionmanagers = [ 'collectInteractiveSprite(', 'hitTest(', 'onMouseDown(', 'onMouseMove(', 'onMouseOut(', 'onMouseUp(', 'onTouchEnd(', 'onTouchMove(', 'onTouchStart(', 'rebuildInteractiveGraph(', 'removeEvents(', 'setTarget(', 'setTargetDomElement(', 'update(', 'currentCursorStyle', 'interactionDOMElement', 'interactiveItems', 'last', 'mouse', 'mouseOut', 'mouseoverEnabled', 'onMouseDown', 'onMouseMove', 'onMouseOut', 'onMouseUp', 'onTouchEnd', 'onTouchMove', 'onTouchStart', 'pool', 'resolution', 'stage', 'tempPoint', 'touches' ]
let s:pixi_invertfilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'invert', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_jsonloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onError(', 'onJSONLoaded(', 'onLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'loaded', 'url' ]
let s:pixi_matrixs = [ 'append(', 'apply(', 'applyInverse(', 'fromArray(', 'identity(', 'rotate(', 'scale(', 'toArray(', 'translate(', 'a', 'b', 'c', 'd', 'tx', 'ty' ]
let s:pixi_movieclips = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'fromFrames(', 'fromImages(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'gotoAndPlay(', 'gotoAndStop(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'play(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'stop(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'animationSpeed', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'currentFrame', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'loop', 'mask', 'onComplete', 'parent', 'pivot', 'playing', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'textures', 'tint', 'totalFrames', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_noisefilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'noise', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_normalmapfilters = [ 'onTextureLoaded(', 'syncUniforms(', 'dirty', 'fragmentSrc', 'map', 'offset', 'padding', 'passes', 'scale', 'shaders', 'uniforms' ]
let s:pixi_pixelatefilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'size', 'uniforms' ]
let s:pixi_pixifastshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'textureCount', 'vertexSrc' ]
let s:pixi_pixishaders = [ 'destroy(', 'init(', 'initSampler2D(', 'initUniforms(', 'syncUniforms(', '_UID', 'attributes', 'defaultVertexSrc', 'dirty', 'firstRun', 'fragmentSrc', 'gl', 'program', 'textureCount' ]
let s:pixi_points = [ 'clone(', 'set(', 'x', 'y' ]
let s:pixi_polyks = [ '_convex(', '_PointInTriangle(', 'Triangulate(' ]
let s:pixi_polygons = [ 'clone(', 'contains(' ]
let s:pixi_primitiveshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_rgbsplitfilters = [ 'syncUniforms(', 'blue', 'dirty', 'fragmentSrc', 'green', 'padding', 'passes', 'red', 'shaders', 'uniforms' ]
let s:pixi_rectangles = [ 'clone(', 'contains(', 'height', 'width', 'x', 'y' ]
let s:pixi_rendertextures = [ '_updateUvs(', 'clear(', 'destroy(', 'emit(', 'getBase64(', 'getCanvas(', 'getImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'onBaseTextureLoaded(', 'once(', 'removeAllListeners(', 'renderCanvas(', 'renderWebGL(', 'resize(', 'setFrame(', '_uvs', 'baseTexture', 'crop', 'frame', 'height', 'noFrame', 'renderer', 'requiresUpdate', 'resolution', 'trim', 'valid', 'width' ]
let s:pixi_ropes = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'renderStripFlat(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'padding', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'texture', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_rounded_rectangles = [ 'clone(', 'contains(', 'height', 'radius', 'width', 'x', 'y' ]
let s:pixi_sepiafilters = [ 'syncUniforms(', 'dirty', 'fragmentSrc', 'padding', 'passes', 'sepia', 'shaders', 'uniforms' ]
let s:pixi_smartblurfilters = [ 'syncUniforms(', 'blur', 'dirty', 'fragmentSrc', 'padding', 'passes', 'shaders', 'uniforms' ]
let s:pixi_spines = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_spineloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'crossorigin', 'loaded', 'url' ]
let s:pixi_sprites = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'fromFrame(', 'fromImage(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tint', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_spritebatchs = [ '_renderCanvas(', '_renderWebGL(' ]
let s:pixi_spritesheetloaders = [ 'emit(', 'listeners(', 'load(', 'mixin(', 'off(', 'on(', 'once(', 'onLoaded(', 'removeAllListeners(', 'baseUrl', 'crossorigin', 'frames', 'texture', 'url' ]
let s:pixi_stages = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'getMousePosition(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setBackgroundColor(', 'setChildIndex(', 'setInteractionDelegate(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactionManager', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_strips = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'renderStripFlat(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_interactive', '_sr', 'alpha', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'dirty', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'padding', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'stage', 'texture', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_stripshaders = [ 'destroy(', 'init(', '_UID', 'fragmentSrc', 'gl', 'program', 'vertexSrc' ]
let s:pixi_texts = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'destroy(', 'determineFontProperties(', 'generateTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setStyle(', 'setText(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', 'updateText(', 'updateTexture(', 'wordWrap(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'canvas', 'children', 'context', 'defaultCursor', 'filterArea', 'filters', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'resolution', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tint', 'visible', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_textures = [ '_updateUvs(', 'addTextureToCache(', 'destroy(', 'emit(', 'fromCanvas(', 'fromFrame(', 'fromImage(', 'listeners(', 'mixin(', 'off(', 'on(', 'onBaseTextureLoaded(', 'once(', 'removeAllListeners(', 'removeTextureFromCache(', 'setFrame(', '_uvs', 'baseTexture', 'crop', 'frame', 'height', 'noFrame', 'requiresUpdate', 'trim', 'valid', 'width' ]
let s:pixi_tilingsprites = [ '_destroyCachedSprite(', '_generateCachedSprite(', '_renderCachedSprite(', '_renderCanvas(', '_renderWebGL(', 'addChild(', 'addChildAt(', 'click(', 'generateTexture(', 'generateTilingTexture(', 'getBounds(', 'getChildAt(', 'getChildIndex(', 'getLocalBounds(', 'mousedown(', 'mouseout(', 'mouseover(', 'mouseup(', 'mouseupoutside(', 'onTextureUpdate(', 'removeChild(', 'removeChildAt(', 'removeChildren(', 'removeStageReference(', 'rightclick(', 'rightdown(', 'rightup(', 'rightupoutside(', 'setChildIndex(', 'setStageReference(', 'setTexture(', 'swapChildren(', 'tap(', 'toGlobal(', 'toLocal(', 'touchend(', 'touchendoutside(', 'touchstart(', 'updateCache(', '_bounds', '_cacheAsBitmap', '_cacheIsDirty', '_cr', '_currentBounds', '_height', '_interactive', '_sr', '_width', 'alpha', 'anchor', 'blendMode', 'buttonMode', 'cacheAsBitmap', 'children', 'defaultCursor', 'filterArea', 'filters', 'height', 'height', 'hitArea', 'interactive', 'mask', 'parent', 'pivot', 'position', 'renderable', 'rotation', 'scale', 'shader', 'stage', 'texture', 'tilePosition', 'tileScale', 'tileScaleOffset', 'tint', 'visible', 'width', 'width', 'worldAlpha', 'worldTransform', 'worldVisible', 'x', 'y' ]
let s:pixi_tiltshiftfilters = [ 'blur', 'end', 'gradientBlur', 'start' ]
let s:pixi_tiltshiftxfilters = [ 'syncUniforms(', 'updateDelta(', 'blur', 'dirty', 'end', 'fragmentSrc', 'gradientBlur', 'padding', 'passes', 'shaders', 'start', 'uniforms' ]
let s:pixi_tiltshiftyfilters = [ 'syncUniforms(', 'updateDelta(', 'blur', 'dirty', 'end', 'fragmentSrc', 'gradientBlur', 'padding', 'passes', 'shaders', 'start', 'uniforms' ]
let s:pixi_twistfilters = [ 'syncUniforms(', 'angle', 'dirty', 'fragmentSrc', 'offset', 'padding', 'passes', 'radius', 'shaders', 'uniforms' ]
let s:pixi_webglblendmodemanagers = [ 'destroy(', 'setBlendMode(', 'setContext(', 'currentBlendMode' ]
let s:pixi_webglfastspritebatchs = [ 'begin(', 'end(', 'flush(', 'render(', 'renderSprite(', 'setContext(', 'start(', 'stop(', 'currentBaseTexture', 'currentBatchSize', 'currentBlendMode', 'drawing', 'indexBuffer', 'indices', 'lastIndexCount', 'matrix', 'maxSize', 'renderSession', 'shader', 'size', 'vertexBuffer', 'vertices', 'vertSize' ]
let s:pixi_webglfiltermanagers = [ 'applyFilterPass(', 'begin(', 'destroy(', 'initShaderBuffers(', 'popFilter(', 'pushFilter(', 'setContext(', 'filterStack', 'offsetX', 'offsetY' ]
let s:pixi_webglgraphicss = [ 'buildCircle(', 'buildComplexPoly(', 'buildLine(', 'buildPoly(', 'buildRectangle(', 'buildRoundedRectangle(', 'quadraticBezierCurve(', 'renderGraphics(', 'switchMode(', 'updateGraphics(' ]
let s:pixi_webglgraphicsdatas = [ 'reset(', 'upload(' ]
let s:pixi_webglmaskmanagers = [ 'destroy(', 'popMask(', 'pushMask(', 'setContext(' ]
let s:pixi_webglrenderers = [ 'destroy(', 'handleContextLost(', 'handleContextRestored(', 'initContext(', 'mapBlendModes(', 'render(', 'renderDisplayObject(', 'resize(', 'updateTexture(', '_contextOptions', 'autoResize', 'blendModeManager', 'clearBeforeRender', 'contextLostBound', 'contextRestoredBound', 'filterManager', 'height', 'maskManager', 'offset', 'preserveDrawingBuffer', 'projection', 'renderSession', 'resolution', 'shaderManager', 'spriteBatch', 'stencilManager', 'transparent', 'type', 'view', 'width' ]
let s:pixi_webglshadermanagers = [ 'destroy(', 'setAttribs(', 'setContext(', 'setShader(', 'attribState', 'maxAttibs', 'stack', 'tempAttribState' ]
let s:pixi_webglspritebatchs = [ '_CompileShader(', 'begin(', 'CompileFragmentShader(', 'compileProgram(', 'CompileVertexShader(', 'destroy(', 'end(', 'flush(', 'initDefaultShaders(', 'render(', 'renderBatch(', 'renderTilingSprite(', 'setContext(', 'start(', 'stop(', 'blendModes', 'currentBaseTexture', 'currentBatchSize', 'defaultShader', 'dirty', 'drawing', 'indices', 'lastIndexCount', 'shaders', 'size', 'sprites', 'textures', 'vertices', 'vertSize' ]
let s:pixi_webglstencilmanagers = [ 'bindGraphics(', 'destroy(', 'popStencil(', 'pushMask(', 'setContext(' ]

let s:winds = ['top', 'undefined', 'Math', 'NaN', 'location', 'JSON', 'document', 'Intl', 'external', 'Infinity', 'window', 'speechSynthesis', 'localStorage', 'sessionStorage', 'applicationCache', 'webkitStorageInfo', 'indexedDB', 'webkitIndexedDB', 'crypto', 'CSS', 'performance', 'console', 'devicePixelRatio', 'styleMedia', 'parent', 'opener', 'frames', 'self', 'defaultstatus', 'defaultStatus', 'status', 'name', 'length', 'closed', 'pageYOffset', 'pageXOffset', 'scrollY', 'scrollX', 'screenTop', 'screenLeft', 'screenY', 'screenX', 'innerWidth', 'innerHeight', 'outerWidth', 'outerHeight', 'offscreenBuffering', 'frameElement', 'event', 'clientInformation', 'navigator', 'toolbar', 'statusbar', 'scrollbars', 'personalbar', 'menubar', 'locationbar', 'history', 'screen', 'onautocompleteerror', 'onautocomplete', 'ondeviceorientation', 'ondevicemotion', 'onunload', 'onstorage', 'onpopstate', 'onpageshow', 'onpagehide', 'ononline', 'onoffline', 'onmessage', 'onlanguagechange', 'onhashchange', 'onbeforeunload', 'onwaiting', 'onvolumechange', 'ontoggle', 'ontimeupdate', 'onsuspend', 'onsubmit', 'onstalled', 'onshow', 'onselect', 'onseeking', 'onseeked', 'onscroll', 'onresize', 'onreset', 'onratechange', 'onprogress', 'onplaying', 'onplay', 'onpause', 'onmousewheel', 'onmouseup', 'onmouseover', 'onmouseout', 'onmousemove', 'onmouseleave', 'onmouseenter', 'onmousedown', 'onloadstart', 'onloadedmetadata', 'onloadeddata', 'onload', 'onkeyup', 'onkeypress', 'onkeydown', 'oninvalid', 'oninput', 'onfocus', 'onerror', 'onended', 'onemptied', 'ondurationchange', 'ondrop', 'ondragstart', 'ondragover', 'ondragleave', 'ondragenter', 'ondragend', 'ondrag', 'ondblclick', 'oncuechange', 'oncontextmenu', 'onclose', 'onclick', 'onchange', 'oncanplaythrough', 'oncanplay', 'oncancel', 'onblur', 'onabort', 'onwheel', 'onwebkittransitionend', 'onwebkitanimationstart', 'onwebkitanimationiteration', 'onwebkitanimationend', 'ontransitionend', 'onsearch', 'TEMPORARY', 'PERSISTENT',
      \ 'EvalError(', 'ReferenceError(', 'Object(', 'Int32Array(', 'RegExp(', 'Uint32Array(', 'parseFloat(', 'decodeURI(', 'TypeError(', 'Int16Array(', 'RangeError(', 'escape(', 'Array(', 'WeakMap(', 'encodeURIComponent(', 'Promise(', 'decodeURIComponent(', 'URIError(', 'WeakSet(', 'Uint8Array(', 'Function(', 'SyntaxError(', 'Uint8ClampedArray(', 'Date(', 'Error(', 'parseInt(', 'unescape(', 'Float32Array(', 'encodeURI(', 'Int8Array(', 'Boolean(', 'ArrayBuffer(', 'Float64Array(', 'isFinite(', 'eval(', 'DataView(', 'String(', 'Uint16Array(', 'Number(', 'isNaN(', 'webkitOfflineAudioContext(', 'webkitAudioContext(', 'OfflineAudioContext(', 'AudioContext(', 'webkitSpeechRecognitionEvent(', 'webkitSpeechRecognitionError(', 'webkitSpeechRecognition(', 'webkitSpeechGrammarList(', 'webkitSpeechGrammar(', 'webkitRTCPeerConnection(', 'webkitMediaStream(', 'SpeechSynthesisUtterance(', 'SpeechSynthesisEvent(', 'Notification(', 'MediaSource(', 'XSLTProcessor(', 'SharedWorker(', 'MediaKeyEvent(', 'Path2D(', 'TimeRanges(', 'MediaError(', 'HTMLVideoElement(', 'HTMLSourceElement(', 'HTMLMediaElement(', 'Audio(', 'HTMLAudioElement(', 'FontFace(', 'MediaKeyError(', 'HTMLDialogElement(', 'webkitIDBTransaction(', 'webkitIDBRequest(', 'webkitIDBObjectStore(', 'webkitIDBKeyRange(', 'webkitIDBIndex(', 'webkitIDBFactory(', 'webkitIDBDatabase(', 'webkitIDBCursor(', 'WebSocket(', 'WebKitGamepad(', 'RTCSessionDescription(', 'RTCIceCandidate(', 'MediaStreamTrack(', 'MediaStreamEvent(', 'IDBVersionChangeEvent(', 'IDBTransaction(', 'IDBRequest(', 'IDBOpenDBRequest(', 'IDBObjectStore(', 'IDBKeyRange(', 'IDBIndex(', 'IDBFactory(', 'IDBDatabase(', 'IDBCursorWithValue(', 'IDBCursor(', 'GamepadEvent(', 'Gamepad(', 'DeviceOrientationEvent(', 'DeviceMotionEvent(', 'CloseEvent(', 'WaveShaperNode(', 'ScriptProcessorNode(', 'PeriodicWave(', 'OscillatorNode(', 'OfflineAudioCompletionEvent(', 'MediaStreamAudioSourceNode(', 'MediaStreamAudioDestinationNode(', 'MediaElementAudioSourceNode(', 'GainNode(', 'DynamicsCompressorNode(', 'DelayNode(', 'ConvolverNode(', 'ChannelSplitterNode(', 'ChannelMergerNode(', 'BiquadFilterNode(', 'AudioProcessingEvent(', 'AudioParam(', 'AudioNode(', 'AudioListener(', 'AudioDestinationNode(', 'AudioBufferSourceNode(', 'AudioBuffer(', 'AnalyserNode(', 'XPathResult(', 'XPathExpression(', 'XPathEvaluator(', 'XMLSerializer(', 'XMLHttpRequestUpload(', 'XMLHttpRequestProgressEvent(', 'XMLHttpRequest(', 'XMLDocument(', 'Worker(', 'Window(', 'WheelEvent(', 'WebKitPoint(', 'WebKitCSSTransformValue(', 'WebKitCSSMatrix(', 'WebKitCSSFilterValue(', 'WebKitCSSFilterRule(', 'WebKitAnimationEvent(', 'WebGLUniformLocation(', 'WebGLTexture(', 'WebGLShaderPrecisionFormat(', 'WebGLShader(', 'WebGLRenderingContext(', 'WebGLRenderbuffer(', 'WebGLProgram(', 'WebGLFramebuffer(', 'WebGLContextEvent(', 'WebGLBuffer(', 'WebGLActiveInfo(', 'ValidityState(', 'VTTCue(', 'URL(', 'UIEvent(', 'TreeWalker(', 'TransitionEvent(', 'TrackEvent(', 'TouchList(', 'TouchEvent(', 'Touch(', 'TextTrackList(', 'TextTrackCueList(', 'TextTrackCue(', 'TextTrack(', 'TextMetrics(', 'TextEvent(', 'Text(', 'StyleSheetList(', 'StyleSheet(', 'StorageEvent(', 'Storage(', 'ShadowRoot(', 'Selection(', 'Screen(', 'SVGZoomEvent(', 'SVGViewSpec(', 'SVGViewElement(', 'SVGUseElement(', 'SVGUnitTypes(', 'SVGTransformList(', 'SVGTransform(', 'SVGTitleElement(', 'SVGTextPositioningElement(', 'SVGTextPathElement(', 'SVGTextElement(', 'SVGTextContentElement(', 'SVGTSpanElement(', 'SVGSymbolElement(', 'SVGSwitchElement(', 'SVGStyleElement(', 'SVGStringList(', 'SVGStopElement(', 'SVGSetElement(', 'SVGScriptElement(', 'SVGSVGElement(', 'SVGRenderingIntent(', 'SVGRectElement(', 'SVGRect(', 'SVGRadialGradientElement(', 'SVGPreserveAspectRatio(', 'SVGPolylineElement(', 'SVGPolygonElement(', 'SVGPointList(', 'SVGPoint(', 'SVGPatternElement(', 'SVGPathSegMovetoRel(', 'SVGPathSegMovetoAbs(', 'SVGPathSegList(', 'SVGPathSegLinetoVerticalRel(', 'SVGPathSegLinetoVerticalAbs(', 'SVGPathSegLinetoRel(', 'SVGPathSegLinetoHorizontalRel(', 'SVGPathSegLinetoHorizontalAbs(', 'SVGPathSegLinetoAbs(', 'SVGPathSegCurvetoQuadraticSmoothRel(', 'SVGPathSegCurvetoQuadraticSmoothAbs(', 'SVGPathSegCurvetoQuadraticRel(', 'SVGPathSegCurvetoQuadraticAbs(', 'SVGPathSegCurvetoCubicSmoothRel(', 'SVGPathSegCurvetoCubicSmoothAbs(', 'SVGPathSegCurvetoCubicRel(', 'SVGPathSegCurvetoCubicAbs(', 'SVGPathSeg(', 'SVGPathSegClosePath(', 'SVGPathSegArcRel(', 'SVGPathSegArcAbs(', 'SVGPathElement(', 'SVGNumberList(', 'SVGNumber(', 'SVGMetadataElement(', 'SVGMatrix(', 'SVGMaskElement(', 'SVGMarkerElement(', 'SVGMPathElement(', 'SVGLinearGradientElement(', 'SVGLineElement(', 'SVGLengthList(', 'SVGLength(', 'SVGImageElement(', 'SVGGraphicsElement(', 'SVGGradientElement(', 'SVGGeometryElement(', 'SVGGElement(', 'SVGForeignObjectElement(', 'SVGFilterElement(', 'SVGFETurbulenceElement(', 'SVGFETileElement(', 'SVGFESpotLightElement(', 'SVGFESpecularLightingElement(', 'SVGFEPointLightElement(', 'SVGFEOffsetElement(', 'SVGFEMorphologyElement(', 'SVGFEMergeNodeElement(', 'SVGFEMergeElement(', 'SVGFEImageElement(', 'SVGFEGaussianBlurElement(', 'SVGFEFuncRElement(', 'SVGFEFuncGElement(', 'SVGFEFuncBElement(', 'SVGFEFuncAElement(', 'SVGFEFloodElement(', 'SVGFEDropShadowElement(', 'SVGFEDistantLightElement(', 'SVGFEDisplacementMapElement(', 'SVGFEDiffuseLightingElement(', 'SVGFEConvolveMatrixElement(', 'SVGFECompositeElement(', 'SVGFEComponentTransferElement(', 'SVGFEColorMatrixElement(', 'SVGFEBlendElement(', 'SVGEllipseElement(', 'SVGElement(', 'SVGDiscardElement(', 'SVGDescElement(', 'SVGDefsElement(', 'SVGCursorElement(', 'SVGComponentTransferFunctionElement(', 'SVGClipPathElement(', 'SVGCircleElement(', 'SVGAnimationElement(', 'SVGAnimatedTransformList(', 'SVGAnimatedString(', 'SVGAnimatedRect(', 'SVGAnimatedPreserveAspectRatio(', 'SVGAnimatedNumberList(', 'SVGAnimatedNumber(', 'SVGAnimatedLengthList(', 'SVGAnimatedLength(', 'SVGAnimatedInteger(', 'SVGAnimatedEnumeration(', 'SVGAnimatedBoolean(', 'SVGAnimatedAngle(', 'SVGAnimateTransformElement(', 'SVGAnimateMotionElement(', 'SVGAnimateElement(', 'SVGAngle(', 'SVGAElement(', 'Rect(', 'Range(', 'RGBColor(', 'ProgressEvent(', 'ProcessingInstruction(', 'PopStateEvent(', 'Plugin(', 'PluginArray(', 'PerformanceTiming(', 'PerformanceResourceTiming(', 'PerformanceNavigation(', 'PerformanceMeasure(', 'PerformanceMark(', 'PerformanceEntry(', 'Performance(', 'PageTransitionEvent(', 'OverflowEvent(', 'Notation(', 'NodeList(', 'NodeIterator(', 'NodeFilter', 'Node(', 'Navigator(', 'NamedNodeMap(', 'MutationRecord(', 'MutationObserver(', 'MutationEvent(', 'MouseEvent(', 'MimeType(', 'MimeTypeArray(', 'MessagePort(', 'MessageEvent(', 'MessageChannel(', 'MediaList(', 'Location(', 'KeyboardEvent(', 'InputMethodContext(', 'ImageData(', 'ImageBitmap(', 'History(', 'HashChangeEvent(', 'HTMLUnknownElement(', 'HTMLUListElement(', 'HTMLTrackElement(', 'HTMLTitleElement(', 'HTMLTextAreaElement(', 'HTMLTemplateElement(', 'HTMLTableSectionElement(', 'HTMLTableRowElement(', 'HTMLTableElement(', 'HTMLTableColElement(', 'HTMLTableCellElement(', 'HTMLTableCaptionElement(', 'HTMLStyleElement(', 'HTMLSpanElement(', 'HTMLShadowElement(', 'HTMLSelectElement(', 'HTMLScriptElement(', 'HTMLQuoteElement(', 'HTMLProgressElement(', 'HTMLPreElement(', 'HTMLParamElement(', 'HTMLParagraphElement(', 'HTMLOutputElement(', 'HTMLOptionsCollection(', 'Option(', 'HTMLOptionElement(', 'HTMLOptGroupElement(', 'HTMLObjectElement(', 'HTMLOListElement(', 'HTMLModElement(', 'HTMLMeterElement(', 'HTMLMetaElement(', 'HTMLMenuElement(', 'HTMLMarqueeElement(', 'HTMLMapElement(', 'HTMLLinkElement(', 'HTMLLegendElement(', 'HTMLLabelElement(', 'HTMLLIElement(', 'HTMLKeygenElement(', 'HTMLInputElement(', 'Image(', 'HTMLImageElement(', 'HTMLIFrameElement(', 'HTMLHtmlElement(', 'HTMLHeadingElement(', 'HTMLHeadElement(', 'HTMLHRElement(', 'HTMLFrameSetElement(', 'HTMLFrameElement(', 'HTMLFormElement(', 'HTMLFormControlsCollection(', 'HTMLFontElement(', 'HTMLFieldSetElement(', 'HTMLEmbedElement(', 'HTMLElement(', 'HTMLDocument(', 'HTMLDivElement(', 'HTMLDirectoryElement(', 'HTMLDataListElement(', 'HTMLDListElement(', 'HTMLContentElement(', 'HTMLCollection(', 'HTMLCanvasElement(', 'HTMLButtonElement(', 'HTMLBodyElement(', 'HTMLBaseElement(', 'HTMLBRElement(', 'HTMLAreaElement(', 'HTMLAppletElement(', 'HTMLAnchorElement(', 'HTMLAllCollection(', 'FormData(', 'FocusEvent(', 'FileReader(', 'FileList(', 'FileError(', 'File(', 'EventTarget(', 'EventSource(', 'Event(', 'ErrorEvent(', 'Element(', 'DocumentType(', 'DocumentFragment(', 'Document(', 'DataTransferItemList(', 'DataTransfer(', 'DOMTokenList(', 'DOMStringMap(', 'DOMStringList(', 'DOMSettableTokenList(', 'DOMParser(', 'DOMImplementation(', 'DOMException(', 'DOMError(', 'CustomEvent(', 'Counter(', 'CompositionEvent(', 'Comment(', 'ClientRectList(', 'ClientRect(', 'CharacterData(', 'CanvasRenderingContext2D(', 'CanvasPattern(', 'CanvasGradient(', 'CSSViewportRule(', 'CSSValueList(', 'CSSValue(', 'CSSUnknownRule(', 'CSSStyleSheet(', 'CSSStyleRule(', 'CSSStyleDeclaration(', 'CSSRuleList(', 'CSSRule(', 'CSSPrimitiveValue(', 'CSSPageRule(', 'CSSMediaRule(', 'CSSKeyframesRule(', 'CSSKeyframeRule(', 'CSSImportRule(', 'CSSFontFaceRule(', 'CSSCharsetRule(', 'CDATASection(', 'Blob(', 'BeforeUnloadEvent(', 'BarProp(', 'AutocompleteErrorEvent(', 'Attr(', 'ApplicationCacheErrorEvent(', 'ApplicationCache(', 'SVGVKernElement(', 'SVGMissingGlyphElement(', 'SVGHKernElement(', 'SVGGlyphRefElement(', 'SVGGlyphElement(', 'SVGFontFaceUriElement(', 'SVGFontFaceSrcElement(', 'SVGFontFaceNameElement(', 'SVGFontFaceFormatElement(', 'SVGFontFaceElement(', 'SVGFontElement(', 'SVGAltGlyphItemElement(', 'SVGAltGlyphElement(', 'SVGAltGlyphDefElement(', 'WebKitMutationObserver(', 'webkitURL(', 'WebKitTransitionEvent(', 'postMessage(', 'close(', 'blur(', 'focus(', 'getSelection(', 'print(', 'stop(', 'open(', 'alert(', 'confirm(', 'prompt(', 'find(', 'scrollBy(', 'scrollTo(', 'scroll(', 'moveBy(', 'moveTo(', 'resizeBy(', 'resizeTo(', 'matchMedia(', 'getComputedStyle(', 'getMatchedCSSRules(', 'webkitConvertPointFromPageToNode(', 'webkitConvertPointFromNodeToPage(', 'requestAnimationFrame(', 'cancelAnimationFrame(', 'webkitRequestAnimationFrame(', 'webkitCancelAnimationFrame(', 'webkitCancelRequestAnimationFrame(', 'captureEvents(', 'releaseEvents(', 'btoa(', 'atob(', 'setTimeout(', 'clearTimeout(', 'setInterval(', 'clearInterval(', 'showModalDialog(', 'webkitRequestFileSystem(', 'webkitResolveLocalFileSystemURL(', 'openDatabase(', 'addEventListener(', 'removeEventListener(', 'dispatchEvent(']

let s:arrays = ['constructor', 'index', 'input', 'length', 'prototype', 
      \ 'constructor(', 'toString(', 'toLocaleString(', 'join(', 'pop(', 'push(', 'concat(', 'reverse(', 'shift(', 'unshift(', 'slice(', 'splice(', 'sort(', 'filter(', 'forEach(', 'some(', 'every(', 'map(', 'indexOf(', 'lastIndexOf(', 'reduce(', 'reduceRight']

let s:dates = ['constructor(', 'toString(', 'toDateString(', 'toTimeString(', 'toLocaleString(', 'toLocaleDateString(', 'toLocaleTimeString(', 'valueOf(', 'getTime(', 'getFullYear(', 'getUTCFullYear(', 'getMonth(', 'getUTCMonth(', 'getDate(', 'getUTCDate(', 'getDay(', 'getUTCDay(', 'getHours(', 'getUTCHours(', 'getMinutes(', 'getUTCMinutes(', 'getSeconds(', 'getUTCSeconds(', 'getMilliseconds(', 'getUTCMilliseconds(', 'getTimezoneOffset(', 'setTime(', 'setMilliseconds(', 'setUTCMilliseconds(', 'setSeconds(', 'setUTCSeconds(', 'setMinutes(', 'setUTCMinutes(', 'setHours(', 'setUTCHours(', 'setDate(', 'setUTCDate(', 'setMonth(', 'setUTCMonth(', 'setFullYear(', 'setUTCFullYear(', 'toGMTString(', 'toUTCString(', 'getYear(', 'setYear(', 'toISOString(', 'toJSON(']

let s:funcs = ['length', 'name', 'arguments', 'caller',
      \ 'constructor(', 'bind(', 'toString(', 'call(', 'apply(']

let s:maths = ['E', 'LN10', 'LN2', 'LOG2E', 'LOG10E', 'PI', 'SQRT1_2', 'SQRT2',
      \ 'random(', 'abs(', 'acos(', 'asin(', 'atan(', 'ceil(', 'cos(', 'exp(', 'floor(', 'log(', 'round(', 'sin(', 'sqrt(', 'tan(', 'atan2(', 'pow(', 'max(', 'min(', 'imul(', 'sign(', 'trunc(', 'sinh(', 'cosh(', 'tanh(', 'asinh(', 'acosh(', 'atanh(', 'log10(', 'log2(', 'hypot(', 'fround(', 'clz32(', 'cbrt(', 'log1p(', 'expm1(']

let s:numbs = ['length', 'name', 'arguments', 'caller', 'prototype', 'MAX_VALUE', 'MIN_VALUE', 'NaN', 'NEGATIVE_INFINITY', 'POSITIVE_INFINITY', 'MAX_SAFE_INTEGER', 'MIN_SAFE_INTEGER', 'EPSILON', 'toFixed', 'toExponential', 'toPrecision',
      \ 'isFinite(', 'isInteger(', 'isNaN(', 'isSafeInteger(', 'parseInt(', 'parseFloat(']

let s:locas = ['ancestorOrigins', 'origin', 'hash', 'search', 'pathname', 'port', 'hostname', 'host', 'protocol', 'href',
      \ 'replace(', 'assign(', 'reload(', 'toString(', 'valueOf(']

let s:objes = ['length', 'name', 'arguments', 'caller', 'prototype',
      \ 'keys(', 'create(', 'defineProperty(', 'defineProperties(', 'freeze(', 'getPrototypeOf(', 'setPrototypeOf(', 'getOwnPropertyDescriptor(', 'getOwnPropertyNames(', 'is(', 'isExtensible(', 'isFrozen(', 'isSealed(', 'preventExtensions(', 'seal(', 'deliverChangeRecords(', 'getNotifier(', 'observe(', 'unobserve(', 'getOwnPropertySymbols(']

let s:reges = ['length', 'name', 'arguments', 'caller', 'prototype', 'input', 'multiline', 'lastMatch', 'lastParen', 'leftContext', 'rightContext',
      \ 'constructor(', 'exec(', 'test(', 'toString(', 'compile(']

let s:stris = ['length', 'name', 'arguments', 'caller', 'prototype', 'charAt', 'charCodeAt', 'concat', 'indexOf', 'lastIndexOf', 'localeCompare', 'match', 'normalize', 'replace', 'search', 'slice', 'split', 'substring', 'substr', 'toLowerCase', 'toLocaleLowerCase', 'toUpperCase', 'toLocaleUpperCase', 'trim', 'trimLeft', 'trimRight', 'link', 'anchor', 'fontcolor', 'fontsize', 'big', 'blink', 'bold', 'fixed', 'italics', 'small', 'strike', 'sub', 'sup', 'repeat', 'startsWith', 'endsWith', 'contains',
      \ 'fromCharCode(']


let s:ctxs = ['textBaseline', 'textAlign', 'font', 'lineDashOffset', 'miterLimit', 'lineJoin', 'lineCap', 'lineWidth', 'shadowColor', 'shadowBlur', 'shadowOffsetY', 'shadowOffsetX', 'fillStyle', 'strokeStyle', 'imageSmoothingEnabled', 'webkitImageSmoothingEnabled', 'globalCompositeOperation', 'globalAlpha', 'canvas',
      \ 'save(', 'restore(', 'scale(', 'rotate(', 'translate(', 'transform(', 'setTransform(', 'resetTransform(', 'createLinearGradient(', 'createRadialGradient(', 'createPattern(', 'clearRect(', 'fillRect(', 'strokeRect(', 'beginPath(', 'fill(', 'stroke(', 'drawFocusIfNeeded(', 'clip(', 'isPointInPath(', 'isPointInStroke(', 'fillText(', 'strokeText(', 'measureText(', 'drawImage(', 'createImageData(', 'getImageData(', 'putImageData(', 'getContextAttributes(', 'setLineDash(', 'getLineDash(', 'setAlpha(', 'setCompositeOperation(', 'setLineWidth(', 'setLineCap(', 'setLineJoin(', 'setMiterLimit(', 'clearShadow(', 'setStrokeColor(', 'setFillColor(', 'drawImageFromRect(', 'setShadow(', 'closePath(', 'moveTo(', 'lineTo(', 'quadraticCurveTo(', 'bezierCurveTo(', 'arcTo(', 'rect(', 'arc(', 'ellipse(']

let s:storage = ['clear(', 'constructor(', 'getItem(', 'key(', 'removeItem(', 'setItem(', 'length']

let s:bodys = ['onunload', 'onstorage', 'onpopstate', 'onpageshow', 'onpagehide', 'ononline', 'onoffline', 'onmessage', 'onlanguagechange', 'onhashchange', 'onbeforeunload', 'onscroll', 'onresize', 'onload', 'onfocus', 'onerror', 'onblur', 'vLink', 'text', 'link', 'bgColor', 'background', 'aLink', 'onautocompleteerror', 'onautocomplete', 'onwaiting', 'onvolumechange', 'ontoggle', 'ontimeupdate', 'onsuspend', 'onsubmit', 'onstalled', 'onshow', 'onselect', 'onseeking', 'onseeked', 'onreset', 'onratechange', 'onprogress', 'onplaying', 'onplay', 'onpause', 'onmousewheel', 'onmouseup', 'onmouseover', 'onmouseout', 'onmousemove', 'onmouseleave', 'onmouseenter', 'onmousedown', 'onloadstart', 'onloadedmetadata', 'onloadeddata', 'onkeyup', 'onkeypress', 'onkeydown', 'oninvalid', 'oninput', 'onended', 'onemptied', 'ondurationchange', 'ondrop', 'ondragstart', 'ondragover', 'ondragleave', 'ondragenter', 'ondragend', 'ondrag', 'ondblclick', 'oncuechange', 'oncontextmenu', 'onclose', 'onclick', 'onchange', 'oncanplaythrough', 'oncanplay', 'oncancel', 'onabort', 'spellcheck', 'isContentEditable', 'contentEditable', 'outerText', 'innerText', 'accessKey', 'hidden', 'webkitdropzone', 'draggable', 'tabIndex', 'dir', 'translate', 'lang', 'title', 'childElementCount', 'lastElementChild', 'firstElementChild', 'children', 'nextElementSibling', 'previousElementSibling', 'onwheel', 'onwebkitfullscreenerror', 'onwebkitfullscreenchange', 'onselectstart', 'onsearch', 'onpaste', 'oncut', 'oncopy', 'onbeforepaste', 'onbeforecut', 'onbeforecopy', 'shadowRoot', 'dataset', 'classList', 'className', 'outerHTML', 'innerHTML', 'scrollHeight', 'scrollWidth', 'scrollTop', 'scrollLeft', 'clientHeight', 'clientWidth', 'clientTop', 'clientLeft', 'offsetParent', 'offsetHeight', 'offsetWidth', 'offsetTop', 'offsetLeft', 'localName', 'prefix', 'namespaceURI', 'id', 'style', 'attributes', 'tagName', 'parentElement', 'textContent', 'baseURI', 'ownerDocument', 'nextSibling', 'previousSibling', 'lastChild', 'firstChild', 'childNodes', 'parentNode', 'nodeType', 'nodeValue', 'nodeName',
      \ 'click(', 'getAttribute(', 'setAttribute(', 'removeAttribute(', 'getAttributeNode(', 'setAttributeNode(', 'removeAttributeNode(', 'getElementsByTagName(', 'hasAttributes(', 'getAttributeNS(', 'setAttributeNS(', 'removeAttributeNS(', 'getElementsByTagNameNS(', 'getAttributeNodeNS(', 'setAttributeNodeNS(', 'hasAttribute(', 'hasAttributeNS(', 'matches(', 'focus(', 'blur(', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollByLines(', 'scrollByPages(', 'getElementsByClassName(', 'insertAdjacentElement(', 'insertAdjacentText(', 'insertAdjacentHTML(', 'webkitMatchesSelector(', 'createShadowRoot(', 'getDestinationInsertionPoints(', 'getClientRects(', 'getBoundingClientRect(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'requestPointerLock(', 'animate(', 'remove(', 'querySelector(', 'querySelectorAll(', 'insertBefore(', 'replaceChild(', 'removeChild(', 'appendChild(', 'hasChildNodes(', 'cloneNode(', 'normalize(', 'isSameNode(', 'isEqualNode(', 'lookupPrefix(', 'isDefaultNamespace(', 'lookupNamespaceURI(', 'compareDocumentPosition(', 'contains(', 'addEventListener(', 'removeEventListener(', 'dispatchEvent(']

let s:docus = ['vlinkColor', 'linkColor', 'alinkColor', 'fgColor', 'bgColor', 'compatMode', 'all', 'onautocompleteerror', 'onautocomplete', 'fonts', 'rootElement', 'childElementCount', 'lastElementChild', 'firstElementChild', 'children', 'onwaiting', 'onvolumechange', 'ontoggle', 'ontimeupdate', 'onsuspend', 'onsubmit', 'onstalled', 'onshow', 'onselect', 'onseeking', 'onseeked', 'onscroll', 'onresize', 'onreset', 'onratechange', 'onprogress', 'onplaying', 'onplay', 'onpause', 'onmousewheel', 'onmouseup', 'onmouseover', 'onmouseout', 'onmousemove', 'onmouseleave', 'onmouseenter', 'onmousedown', 'onloadstart', 'onloadedmetadata', 'onloadeddata', 'onload', 'onkeyup', 'onkeypress', 'onkeydown', 'oninvalid', 'oninput', 'onfocus', 'onerror', 'onended', 'onemptied', 'ondurationchange', 'ondrop', 'ondragstart', 'ondragover', 'ondragleave', 'ondragenter', 'ondragend', 'ondrag', 'ondblclick', 'oncuechange', 'oncontextmenu', 'onclose', 'onclick', 'onchange', 'oncanplaythrough', 'oncanplay', 'oncancel', 'onblur', 'onabort', 'webkitFullscreenElement', 'webkitFullscreenEnabled', 'webkitCurrentFullScreenElement', 'webkitFullScreenKeyboardInputAllowed', 'webkitIsFullScreen', 'currentScript', 'webkithidden', 'webkitVisibilityState', 'hidden', 'visibilityState', 'onwheel', 'onwebkitpointerlockerror', 'onwebkitpointerlockchange', 'onwebkitfullscreenerror', 'onwebkitfullscreenchange', 'onselectstart', 'onselectionchange', 'onsearch', 'onreadystatechange', 'onpointerlockerror', 'onpointerlockchange', 'onpaste', 'oncut', 'oncopy', 'onbeforepaste', 'onbeforecut', 'onbeforecopy', 'webkitPointerLockElement', 'pointerLockElement', 'activeElement', 'selectedStylesheetSet', 'preferredStylesheetSet', 'characterSet', 'readyState', 'defaultCharset', 'charset', 'location', 'lastModified', 'anchors', 'scripts', 'forms', 'links', 'plugins', 'embeds', 'applets', 'images', 'head', 'body', 'cookie', 'URL', 'domain', 'referrer', 'title', 'designMode', 'dir', 'contentType', 'styleSheets', 'defaultView', 'documentURI', 'xmlStandalone', 'xmlVersion', 'xmlEncoding', 'inputEncoding', 'documentElement', 'implementation', 'doctype', 'parentElement', 'textContent', 'baseURI', 'localName', 'namespaceURI', 'ownerDocument', 'nextSibling', 'previousSibling', 'lastChild', 'firstChild', 'childNodes', 'parentNode', 'nodeType', 'nodeValue', 'nodeName',
      \ 'open(', 'close(', 'write(', 'writeln(', 'clear(', 'captureEvents(', 'releaseEvents(', 'createDocumentFragment(', 'createTextNode(', 'createComment(', 'createCDATASection(', 'createProcessingInstruction(', 'createAttribute(', 'getElementsByTagName(', 'importNode(', 'createAttributeNS(', 'getElementsByTagNameNS(', 'getElementById(', 'adoptNode(', 'createEvent(', 'createRange(', 'createNodeIterator(', 'createTreeWalker(', 'getOverrideStyle(', 'execCommand(', 'queryCommandEnabled(', 'queryCommandIndeterm(', 'queryCommandState(', 'queryCommandSupported(', 'queryCommandValue(', 'getElementsByName(', 'elementFromPoint(', 'caretRangeFromPoint(', 'getSelection(', 'getCSSCanvasContext(', 'getElementsByClassName(', 'hasFocus(', 'exitPointerLock(', 'webkitExitPointerLock(', 'registerElement(', 'createElement(', 'createElementNS(', 'webkitCancelFullScreen(', 'webkitExitFullscreen(', 'querySelector(', 'querySelectorAll(', 'createExpression(', 'createNSResolver(', 'evaluate(', 'insertBefore(', 'replaceChild(', 'removeChild(', 'appendChild(', 'hasChildNodes(', 'cloneNode(', 'normalize(', 'isSameNode(', 'isEqualNode(', 'lookupPrefix(', 'isDefaultNamespace(', 'lookupNamespaceURI(', 'compareDocumentPosition(', 'contains(', 'addEventListener(', 'removeEventListener(', 'dispatchEvent(']

let s:hists = ['state', 'length',
      \ 'back(', 'forward(', 'go(', 'pushState(', 'replaceState(']

let s:imags = ['y', 'x', 'width', 'vspace', 'useMap', 'srcset', 'src', 'naturalWidth', 'naturalHeight', 'name', 'lowsrc', 'longDesc', 'isMap', 'hspace', 'height', 'crossOrigin', 'complete', 'border', 'alt', 'align', 'onautocompleteerror', 'onautocomplete', 'onwaiting', 'onvolumechange', 'ontoggle', 'ontimeupdate', 'onsuspend', 'onsubmit', 'onstalled', 'onshow', 'onselect', 'onseeking', 'onseeked', 'onscroll', 'onresize', 'onreset', 'onratechange', 'onprogress', 'onplaying', 'onplay', 'onpause', 'onmousewheel', 'onmouseup', 'onmouseover', 'onmouseout', 'onmousemove', 'onmouseleave', 'onmouseenter', 'onmousedown', 'onloadstart', 'onloadedmetadata', 'onloadeddata', 'onload', 'onkeyup', 'onkeypress', 'onkeydown', 'oninvalid', 'oninput', 'onfocus', 'onerror', 'onended', 'onemptied', 'ondurationchange', 'ondrop', 'ondragstart', 'ondragover', 'ondragleave', 'ondragenter', 'ondragend', 'ondrag', 'ondblclick', 'oncuechange', 'oncontextmenu', 'onclose', 'onclick', 'onchange', 'oncanplaythrough', 'oncanplay', 'oncancel', 'onblur', 'onabort', 'spellcheck', 'isContentEditable', 'contentEditable', 'outerText', 'innerText', 'accessKey', 'hidden', 'webkitdropzone', 'draggable', 'tabIndex', 'dir', 'translate', 'lang', 'title', 'childElementCount', 'lastElementChild', 'firstElementChild', 'children', 'nextElementSibling', 'previousElementSibling', 'onwheel', 'onwebkitfullscreenerror', 'onwebkitfullscreenchange', 'onselectstart', 'onsearch', 'onpaste', 'oncut', 'oncopy', 'onbeforepaste', 'onbeforecut', 'onbeforecopy', 'shadowRoot', 'dataset', 'classList', 'className', 'outerHTML', 'innerHTML', 'scrollHeight', 'scrollWidth', 'scrollTop', 'scrollLeft', 'clientHeight', 'clientWidth', 'clientTop', 'clientLeft', 'offsetParent', 'offsetHeight', 'offsetWidth', 'offsetTop', 'offsetLeft', 'localName', 'prefix', 'namespaceURI', 'id', 'style', 'attributes', 'tagName', 'parentElement', 'textContent', 'baseURI', 'ownerDocument', 'nextSibling', 'previousSibling', 'lastChild', 'firstChild', 'childNodes', 'parentNode', 'nodeType', 'nodeValue', 'nodeName',
      \ 'click(', 'getAttribute(', 'setAttribute(', 'removeAttribute(', 'getAttributeNode(', 'setAttributeNode(', 'removeAttributeNode(', 'getElementsByTagName(', 'hasAttributes(', 'getAttributeNS(', 'setAttributeNS(', 'removeAttributeNS(', 'getElementsByTagNameNS(', 'getAttributeNodeNS(', 'setAttributeNodeNS(', 'hasAttribute(', 'hasAttributeNS(', 'matches(', 'focus(', 'blur(', 'scrollIntoView(', 'scrollIntoViewIfNeeded(', 'scrollByLines(', 'scrollByPages(', 'getElementsByClassName(', 'insertAdjacentElement(', 'insertAdjacentText(', 'insertAdjacentHTML(', 'webkitMatchesSelector(', 'createShadowRoot(', 'getDestinationInsertionPoints(', 'getClientRects(', 'getBoundingClientRect(', 'webkitRequestFullScreen(', 'webkitRequestFullscreen(', 'webkitRequestPointerLock(', 'requestPointerLock(', 'animate(', 'remove(', 'querySelector(', 'querySelectorAll(', 'insertBefore(', 'replaceChild(', 'removeChild(', 'appendChild(', 'hasChildNodes(', 'cloneNode(', 'normalize(', 'isSameNode(', 'isEqualNode(', 'lookupPrefix(', 'isDefaultNamespace(', 'lookupNamespaceURI(', 'compareDocumentPosition(', 'contains(', 'addEventListener(', 'removeEventListener(', 'dispatchEvent(']

let s:navis = ['webkitPersistentStorage', 'webkitTemporaryStorage', 'geolocation', 'doNotTrack', 'onLine', 'languages', 'language', 'userAgent', 'product', 'platform', 'appVersion', 'appName', 'appCodeName', 'hardwareConcurrency', 'maxTouchPoints', 'vendorSub', 'vendor', 'productSub', 'cookieEnabled', 'mimeTypes', 'plugins',
      \ 'javaEnabled(', 'getStorageUpdates(', 'vibrate(', 'webkitGetGamepads(', 'getGamepads(', 'webkitGetUserMedia(', 'getMediaDevices(', 'registerProtocolHandler(']

let s:scres = ['availWidth', 'availHeight', 'availTop', 'availLeft', 'pixelDepth', 'colorDepth', 'width', 'height']

let s:styls = ['parentRule', 'length', 'cssText', 'alignContent', 'alignItems', 'alignSelf', 'alignmentBaseline', 'all', 'backfaceVisibility', 'background', 'backgroundAttachment', 'backgroundBlendMode', 'backgroundClip', 'backgroundColor', 'backgroundImage', 'backgroundOrigin', 'backgroundPosition', 'backgroundPositionX', 'backgroundPositionY', 'backgroundRepeat', 'backgroundRepeatX', 'backgroundRepeatY', 'backgroundSize', 'baselineShift', 'border', 'borderBottom', 'borderBottomColor', 'borderBottomLeftRadius', 'borderBottomRightRadius', 'borderBottomStyle', 'borderBottomWidth', 'borderCollapse', 'borderColor', 'borderImage', 'borderImageOutset', 'borderImageRepeat', 'borderImageSlice', 'borderImageSource', 'borderImageWidth', 'borderLeft', 'borderLeftColor', 'borderLeftStyle', 'borderLeftWidth', 'borderRadius', 'borderRight', 'borderRightColor', 'borderRightStyle', 'borderRightWidth', 'borderSpacing', 'borderStyle', 'borderTop', 'borderTopColor', 'borderTopLeftRadius', 'borderTopRightRadius', 'borderTopStyle', 'borderTopWidth', 'borderWidth', 'bottom', 'boxShadow', 'boxSizing', 'bufferedRendering', 'captionSide', 'clear', 'clip', 'clipPath', 'clipRule', 'color', 'colorInterpolation', 'colorInterpolationFilters', 'colorRendering', 'content', 'counterIncrement', 'counterReset', 'cursor', 'direction', 'display', 'dominantBaseline', 'emptyCells', 'enableBackground', 'fill', 'fillOpacity', 'fillRule', 'filter', 'flex', 'flexBasis', 'flexDirection', 'flexFlow', 'flexGrow', 'flexShrink', 'flexWrap', 'float', 'floodColor', 'floodOpacity', 'font', 'fontFamily', 'fontKerning', 'fontSize', 'fontStretch', 'fontStyle', 'fontVariant', 'fontVariantLigatures', 'fontWeight', 'glyphOrientationHorizontal', 'glyphOrientationVertical', 'height', 'imageRendering', 'justifyContent', 'left', 'letterSpacing', 'lightingColor', 'lineHeight', 'listStyle', 'listStyleImage', 'listStylePosition', 'listStyleType', 'margin', 'marginBottom', 'marginLeft', 'marginRight', 'marginTop', 'marker', 'markerEnd', 'markerMid', 'markerStart', 'mask', 'maskType', 'maxHeight', 'maxWidth', 'maxZoom', 'minHeight', 'minWidth', 'minZoom', 'objectFit', 'objectPosition', 'opacity', 'order', 'orientation', 'orphans', 'outline', 'outlineColor', 'outlineOffset', 'outlineStyle', 'outlineWidth', 'overflow', 'overflowWrap', 'overflowX', 'overflowY', 'padding', 'paddingBottom', 'paddingLeft', 'paddingRight', 'paddingTop', 'page', 'pageBreakAfter', 'pageBreakBefore', 'pageBreakInside', 'paintOrder', 'perspective', 'perspectiveOrigin', 'pointerEvents', 'position', 'quotes', 'resize', 'right', 'shapeImageThreshold', 'shapeMargin', 'shapeOutside', 'shapeRendering', 'size', 'speak', 'src', 'stopColor', 'stopOpacity', 'stroke', 'strokeDasharray', 'strokeDashoffset', 'strokeLinecap', 'strokeLinejoin', 'strokeMiterlimit', 'strokeOpacity', 'strokeWidth', 'tabSize', 'tableLayout', 'textAlign', 'textAnchor', 'textDecoration', 'textIndent', 'textLineThroughColor', 'textLineThroughMode', 'textLineThroughStyle', 'textLineThroughWidth', 'textOverflow', 'textOverlineColor', 'textOverlineMode', 'textOverlineStyle', 'textOverlineWidth', 'textRendering', 'textShadow', 'textTransform', 'textUnderlineColor', 'textUnderlineMode', 'textUnderlineStyle', 'textUnderlineWidth', 'top', 'touchAction', 'transform', 'transformOrigin', 'transformStyle', 'transition', 'transitionDelay', 'transitionDuration', 'transitionProperty', 'transitionTimingFunction', 'unicodeBidi', 'unicodeRange', 'userZoom', 'vectorEffect', 'verticalAlign', 'visibility', 'webkitAnimation', 'webkitAnimationDelay', 'webkitAnimationDirection', 'webkitAnimationDuration', 'webkitAnimationFillMode', 'webkitAnimationIterationCount', 'webkitAnimationName', 'webkitAnimationPlayState', 'webkitAnimationTimingFunction', 'webkitAppRegion', 'webkitAppearance', 'webkitAspectRatio', 'webkitBackfaceVisibility', 'webkitBackgroundClip', 'webkitBackgroundComposite', 'webkitBackgroundOrigin', 'webkitBackgroundSize', 'webkitBorderAfter', 'webkitBorderAfterColor', 'webkitBorderAfterStyle', 'webkitBorderAfterWidth', 'webkitBorderBefore', 'webkitBorderBeforeColor', 'webkitBorderBeforeStyle', 'webkitBorderBeforeWidth', 'webkitBorderEnd', 'webkitBorderEndColor', 'webkitBorderEndStyle', 'webkitBorderEndWidth', 'webkitBorderFit', 'webkitBorderHorizontalSpacing', 'webkitBorderImage', 'webkitBorderRadius', 'webkitBorderStart', 'webkitBorderStartColor', 'webkitBorderStartStyle', 'webkitBorderStartWidth', 'webkitBorderVerticalSpacing', 'webkitBoxAlign', 'webkitBoxDecorationBreak', 'webkitBoxDirection', 'webkitBoxFlex', 'webkitBoxFlexGroup', 'webkitBoxLines', 'webkitBoxOrdinalGroup', 'webkitBoxOrient', 'webkitBoxPack', 'webkitBoxReflect', 'webkitBoxShadow', 'webkitClipPath', 'webkitColumnBreakAfter', 'webkitColumnBreakBefore', 'webkitColumnBreakInside', 'webkitColumnCount', 'webkitColumnGap', 'webkitColumnRule', 'webkitColumnRuleColor', 'webkitColumnRuleStyle', 'webkitColumnRuleWidth', 'webkitColumnSpan', 'webkitColumnWidth', 'webkitColumns', 'webkitFilter', 'webkitFontFeatureSettings', 'webkitFontSizeDelta', 'webkitFontSmoothing', 'webkitHighlight', 'webkitHyphenateCharacter', 'webkitLineBoxContain', 'webkitLineBreak', 'webkitLineClamp', 'webkitLocale', 'webkitLogicalHeight', 'webkitLogicalWidth', 'webkitMarginAfter', 'webkitMarginAfterCollapse', 'webkitMarginBefore', 'webkitMarginBeforeCollapse', 'webkitMarginBottomCollapse', 'webkitMarginCollapse', 'webkitMarginEnd', 'webkitMarginStart', 'webkitMarginTopCollapse', 'webkitMask', 'webkitMaskBoxImage', 'webkitMaskBoxImageOutset', 'webkitMaskBoxImageRepeat', 'webkitMaskBoxImageSlice', 'webkitMaskBoxImageSource', 'webkitMaskBoxImageWidth', 'webkitMaskClip', 'webkitMaskComposite', 'webkitMaskImage', 'webkitMaskOrigin', 'webkitMaskPosition', 'webkitMaskPositionX', 'webkitMaskPositionY', 'webkitMaskRepeat', 'webkitMaskRepeatX', 'webkitMaskRepeatY', 'webkitMaskSize', 'webkitMaxLogicalHeight', 'webkitMaxLogicalWidth', 'webkitMinLogicalHeight', 'webkitMinLogicalWidth', 'webkitPaddingAfter', 'webkitPaddingBefore', 'webkitPaddingEnd', 'webkitPaddingStart', 'webkitPerspective', 'webkitPerspectiveOrigin', 'webkitPerspectiveOriginX', 'webkitPerspectiveOriginY', 'webkitPrintColorAdjust', 'webkitRtlOrdering', 'webkitRubyPosition', 'webkitTapHighlightColor', 'webkitTextCombine', 'webkitTextDecorationsInEffect', 'webkitTextEmphasis', 'webkitTextEmphasisColor', 'webkitTextEmphasisPosition', 'webkitTextEmphasisStyle', 'webkitTextFillColor', 'webkitTextOrientation', 'webkitTextSecurity', 'webkitTextStroke', 'webkitTextStrokeColor', 'webkitTextStrokeWidth', 'webkitTransform', 'webkitTransformOrigin', 'webkitTransformOriginX', 'webkitTransformOriginY', 'webkitTransformOriginZ', 'webkitTransformStyle', 'webkitTransition', 'webkitTransitionDelay', 'webkitTransitionDuration', 'webkitTransitionProperty', 'webkitTransitionTimingFunction', 'webkitUserDrag', 'webkitUserModify', 'webkitUserSelect', 'webkitWritingMode', 'whiteSpace', 'widows', 'width', 'willChange', 'wordBreak', 'wordSpacing', 'wordWrap', 'writingMode', 'zIndex', 'zoom',
      \ 'getPropertyValue(', 'removeProperty(', 'getPropertyPriority(', 'setProperty(', 'item(', 'getPropertyCSSValue(']

let s:niters = ['pointerBeforeReferenceNode', 'referenceNode', 'expandEntityReferences', 'filter', 'whatToShow', 'root',
      \ 'nextNode(', 'previousNode(', 'detach(']

let s:nfilter = ['FILTER_REJECT', 'SHOW_ENTITY_REFERENCE', 'SHOW_PROCESSING_INSTRUCTION', 'arguments', 'SHOW_DOCUMENT', 'SHOW_CDATA_SECTION', 'SHOW_DOCUMENT_FRAGMENT', 'length', 'prototype', 'FILTER_ACCEPT', 'SHOW_NOTATION', 'SHOW_ATTRIBUTE', 'SHOW_ALL', 'name', 'SHOW_COMMENT', 'SHOW_DOCUMENT_TYPE', 'SHOW_ENTITY', 'caller', 'SHOW_ELEMENT', 'FILTER_SKIP', 'SHOW_TEXT', 'acceptNode',
      \ 'toString(']

let s:twalkers = ['currentNode', 'expandEntityReferences', 'filter', 'whatToShow', 'root',
      \ 'parentNode(', 'firstChild(', 'lastChild(', 'previousSibling(', 'nextSibling(', 'previousNode(', 'nextNode(']

let s:console = ['memory',
      \ 'debug(', 'error(', 'info(', 'log(', 'warn(', 'dir(', 'dirxml(', 'table(', 'trace(', 'assert(', 'count(', 'markTimeline(', 'profile(', 'profileEnd(', 'time(', 'timeEnd(', 'timeStamp(', 'timeline(', 'timelineEnd(', 'group(', 'groupCollapsed(', 'groupEnd(', 'clear(']

let s:xmlhs = ['statusText', 'status', 'responseURL', 'response', 'responseType', 'responseXML', 'responseText', 'upload', 'withCredentials', 'readyState', 'timeout', 'onreadystatechange', 'ontimeout', 'onprogress', 'onloadstart', 'onloadend', 'onload', 'onerror', 'onabort',
      \ 'open(', 'setRequestHeader(', 'send(', 'abort(', 'getAllResponseHeaders(', 'getResponseHeader(', 'overrideMimeType(', 'addEventListener(', 'removeEventListener(', 'dispatchEvent(']

function! javascriptcomplete#CompleteJS(findstart, base)
  if a:findstart
    " locate the start of the word
    let line = getline('.')
    let start = col('.') - 1
    let curline = line('.')
    let compl_begin = col('.') - 2
    " Bit risky but JS is rather limited language and local chars shouldn't
    " fint way into names
    while start >= 0 && line[start - 1] =~ '\k'
      let start -= 1
    endwhile
    let b:compl_context = getline('.')[0:compl_begin]
    return start
  else
    " Initialize base return lists
    let res = []
    let res2 = []
    " a:base is very short - we need context
    " Shortcontext is context without a:base, useful for checking if we are
    " looking for objects and for what objects we are looking for
    let context = b:compl_context
    let shortcontext = substitute(context, a:base.'$', '', '')
    unlet! b:compl_context

    if exists("b:jsrange")
      let file = getline(b:jsrange[0],b:jsrange[1])
      unlet! b:jsrange

      if len(b:js_extfiles) > 0
        let file = b:js_extfiles + file
      endif

    else
      let file = getline(1, '$')
    endif


    if shortcontext =~ '\.$'

      let user_props1 = filter(copy(file), 'v:val =~ "this\\.\\k"')
      let juser_props1 = join(user_props1, ' ')
      let user_props1 = split(juser_props1, '\zethis\.')
      unlet! juser_props1
      call map(user_props1, 'matchstr(v:val, "this\\.\\zs\\k\\+\\ze")')

      let user_props2 = filter(copy(file), 'v:val =~ "\\.prototype\\.\\k"')
      let juser_props2 = join(user_props2, ' ')
      let user_props2 = split(juser_props2, '\zeprototype\.')
      unlet! juser_props2
      call map(user_props2, 'matchstr(v:val, "prototype\\.\\zs\\k\\+\\ze")')
      let user_props = user_props1 + user_props2

      " Find object type declaration to reduce number of suggestions. {{{
      " 1. Get object name
      " 2. Find object declaration line
      " 3. General declaration follows "= new Type" syntax, additional else
      "    for regexp "= /re/"
      " 4. Make correction for Microsoft.XMLHTTP ActiveXObject
      " 5. Repeat for external files
      let object = matchstr(shortcontext, '\zs\k\+\ze\(\[.\{-}\]\)\?\.$')
      if len(object) > 0
        let decl_line = search(object.'.\{-}=\s*new\s*', 'bn')
        if decl_line > 0
          let object_type = matchstr(getline(decl_line), object.'.\{-}=\s*new\s*\zs\k\+\.*\k*\ze')
          if object_type == 'ActiveXObject' && matchstr(getline(decl_line), object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
            let object_type = 'XMLHttpRequest'
          endif
        else
          if search(object.'\s*=\s*\/', 'bn') > 0
            let object_type = 'RegExp'
          elseif search(object.'\s*=\s*{', 'bn') > 0
            let object_type = 'Object'
          elseif search(object.'\s*=\s*\(true\|false\|!\)', 'bn') > 0
            let object_type = 'Boolean'
          elseif search(object.'\s*=\s*\[', 'bn') > 0
            let object_type = 'Array'
          elseif search(object.'\s*=\s*\(["'."'".']\|String(\)', 'bn') > 0
            let object_type = 'String'
          elseif search(object.'\s*=\s*document\.createTreeWalker(', 'bn') > 0
            let object_type = 'TreeWalker'
          elseif search(object.'\s*=\s*[a-zA-Z_$]\+\.getContext(', 'bn') > 0
            let object_type = 'CanvasRenderingContext2D'
          elseif search(object.'\s*=\s*document\.createNodeIterator(', 'bn') > 0
            let object_type = 'NodeIterator'
          endif
        endif
        " We didn't find var declaration in current file but we may have
        " something in external files.
        if decl_line == 0 && exists("b:js_extfiles")
          let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "'.object.'.\\{-}=\\s*new\\s*"')
          if len(dext_line) > 0
            let object_type = matchstr(dext_line[-1], object.'.\{-}=\s*new\s*\zs\k\+\ze')
            if object_type == 'ActiveXObject' && matchstr(dext_line[-1], object.'.\{-}=\s*new\s*ActiveXObject\s*(.Microsoft\.XMLHTTP.)') != ''
              let object_type = 'XMLHttpRequest'
            endif
          else
            let dext_line = filter(copy(b:js_extfiles), 'v:val =~ "var\s*'.object.'\\s*=\\s*\\/"')
            if len(dext_line) > 0
              let object_type = 'RegExp'
            endif
          endif
        endif
      endif

      if !exists('object_type')
        let object_type = ''
      endif

      if object_type == 'Date'
        let values = s:dates
      elseif object_type == 'Image'
        let values = s:imags
      elseif object_type == 'Array'
        let values = s:arrays
      elseif object_type == 'Object'
        let values = s:objes
      elseif object_type == 'Boolean'
        let values = ['arguments', 'caller', 'length', 'name', 'prototype', 'constructor', 'toString', 'valueOf']
      elseif object_type == 'XMLHttpRequest'
        let values = s:xmlhs
      elseif object_type == 'String'
        let values = s:stris
      elseif object_type == 'RegExp'
        let values = s:reges
      elseif object_type == 'Math'
        let values = s:maths
      elseif object_type == 'CanvasRenderingContext2D'
        let values = s:ctxs
      elseif object_type == 'NodeIterator'
        let values = s:niters
      elseif object_type == 'TreeWalker'
        let values = s:twalkers
      elseif object_type == 'PIXI'
        let values = s:pixis
      elseif object_type == 'PIXI.AjaxRequest'
        let values = s:pixi_ajaxrequests
      elseif object_type == 'PIXI.AbstractFilter'
        let values = s:pixi_abstractfilters
      elseif object_type == 'PIXI.AjaxRequest'
        let values = s:pixi_ajaxrequests
      elseif object_type == 'PIXI.AlphaMaskFilter'
        let values = s:pixi_alphamaskfilters
      elseif object_type == 'PIXI.AsciiFilter'
        let values = s:pixi_asciifilters
      elseif object_type == 'PIXI.AssetLoader'
        let values = s:pixi_assetloaders
      elseif object_type == 'PIXI.AtlasLoader'
        let values = s:pixi_atlasloaders
      elseif object_type == 'PIXI.BaseTexture'
        let values = s:pixi_basetextures
      elseif object_type == 'PIXI.BitmapFontLoader'
        let values = s:pixi_bitmapfontloaders
      elseif object_type == 'PIXI.BitmapText'
        let values = s:pixi_bitmaptexts
      elseif object_type == 'PIXI.BlurFilter'
        let values = s:pixi_blurfilters
      elseif object_type == 'PIXI.BlurXFilter'
        let values = s:pixi_blurxfilters
      elseif object_type == 'PIXI.BlurYFilter'
        let values = s:pixi_bluryfilters
      elseif object_type == 'PIXI.CanvasBuffer'
        let values = s:pixi_canvasbuffers
      elseif object_type == 'PIXI.CanvasMaskManager'
        let values = s:pixi_canvasmaskmanagers
      elseif object_type == 'PIXI.CanvasRenderer'
        let values = s:pixi_canvasrenderers
      elseif object_type == 'PIXI.CanvasTinter'
        let values = s:pixi_canvastinters
      elseif object_type == 'PIXI.Circle'
        let values = s:pixi_circles
      elseif object_type == 'PIXI.ColorMatrixFilter'
        let values = s:pixi_colormatrixfilters
      elseif object_type == 'PIXI.ColorStepFilter'
        let values = s:pixi_colorstepfilters
      elseif object_type == 'PIXI.ComplexPrimitiveShader'
        let values = s:pixi_complexprimitiveshaders
      elseif object_type == 'PIXI.ConvolutionFilter'
        let values = s:pixi_convolutionfilters
      elseif object_type == 'PIXI.CrossHatchFilter'
        let values = s:pixi_crosshatchfilters
      elseif object_type == 'PIXI.DisplacementFilter'
        let values = s:pixi_displacementfilters
      elseif object_type == 'PIXI.DisplayObjectContainer'
        let values = s:pixi_displayobjectcontainers
      elseif object_type == 'PIXI.DotScreenFilter'
        let values = s:pixi_dotscreenfilters
      elseif object_type == 'PIXI.Ellipse'
        let values = s:pixi_ellipses
      elseif object_type == 'PIXI.Event'
        let values = s:pixi_events
      elseif object_type == 'PIXI.EventTarget'
        let values = s:pixi_eventtargets
      elseif object_type == 'PIXI.FilterBlock'
        let values = s:pixi_filterblocks
      elseif object_type == 'PIXI.FilterTexture'
        let values = s:pixi_filtertextures
      elseif object_type == 'PIXI.Graphics'
        let values = s:pixi_graphicss
      elseif object_type == 'PIXI.GrayFilter'
        let values = s:pixi_grayfilters
      elseif object_type == 'PIXI.ImageLoader'
        let values = s:pixi_imageloaders
      elseif object_type == 'PIXI.InteractionData'
        let values = s:pixi_interactiondatas
      elseif object_type == 'PIXI.InteractionManager'
        let values = s:pixi_interactionmanagers
      elseif object_type == 'PIXI.InvertFilter'
        let values = s:pixi_invertfilters
      elseif object_type == 'PIXI.JsonLoader'
        let values = s:pixi_jsonloaders
      elseif object_type == 'PIXI.Matrix'
        let values = s:pixi_matrixs
      elseif object_type == 'PIXI.MovieClip'
        let values = s:pixi_movieclips
      elseif object_type == 'PIXI.NoiseFilter'
        let values = s:pixi_noisefilters
      elseif object_type == 'PIXI.NormalMapFilter'
        let values = s:pixi_normalmapfilters
      elseif object_type == 'PIXI.PixelateFilter'
        let values = s:pixi_pixelatefilters
      elseif object_type == 'PIXI.PixiFastShader'
        let values = s:pixi_pixifastshaders
      elseif object_type == 'PIXI.PixiShader'
        let values = s:pixi_pixishaders
      elseif object_type == 'PIXI.Point'
        let values = s:pixi_points
      elseif object_type == 'PIXI.PolyK'
        let values = s:pixi_polyks
      elseif object_type == 'PIXI.Polygon'
        let values = s:pixi_polygons
      elseif object_type == 'PIXI.PrimitiveShader'
        let values = s:pixi_primitiveshaders
      elseif object_type == 'PIXI.RGBSplitFilter'
        let values = s:pixi_rgbsplitfilters
      elseif object_type == 'PIXI.Rectangle'
        let values = s:pixi_rectangles
      elseif object_type == 'PIXI.RenderTexture'
        let values = s:pixi_rendertextures
      elseif object_type == 'PIXI.Rope'
        let values = s:pixi_ropes
      elseif object_type == 'PIXI.Rounded Rectangle'
        let values = s:pixi_rounded_rectangles
      elseif object_type == 'PIXI.SepiaFilter'
        let values = s:pixi_sepiafilters
      elseif object_type == 'PIXI.SmartBlurFilter'
        let values = s:pixi_smartblurfilters
      elseif object_type == 'PIXI.Spine'
        let values = s:pixi_spines
      elseif object_type == 'PIXI.SpineLoader'
        let values = s:pixi_spineloaders
      elseif object_type == 'PIXI.Sprite'
        let values = s:pixi_sprites
      elseif object_type == 'PIXI.SpriteBatch'
        let values = s:pixi_spritebatchs
      elseif object_type == 'PIXI.SpriteSheetLoader'
        let values = s:pixi_spritesheetloaders
      elseif object_type == 'PIXI.Stage'
        let values = s:pixi_stages
      elseif object_type == 'PIXI.Strip'
        let values = s:pixi_strips
      elseif object_type == 'PIXI.StripShader'
        let values = s:pixi_stripshaders
      elseif object_type == 'PIXI.Text'
        let values = s:pixi_texts
      elseif object_type == 'PIXI.Texture'
        let values = s:pixi_textures
      elseif object_type == 'PIXI.TilingSprite'
        let values = s:pixi_tilingsprites
      elseif object_type == 'PIXI.TiltShiftFilter'
        let values = s:pixi_tiltshiftfilters
      elseif object_type == 'PIXI.TiltShiftXFilter'
        let values = s:pixi_tiltshiftxfilters
      elseif object_type == 'PIXI.TiltShiftYFilter'
        let values = s:pixi_tiltshiftyfilters
      elseif object_type == 'PIXI.TwistFilter'
        let values = s:pixi_twistfilters
      elseif object_type == 'PIXI.WebGLBlendModeManager'
        let values = s:pixi_webglblendmodemanagers
      elseif object_type == 'PIXI.WebGLFastSpriteBatch'
        let values = s:pixi_webglfastspritebatchs
      elseif object_type == 'PIXI.WebGLFilterManager'
        let values = s:pixi_webglfiltermanagers
      elseif object_type == 'PIXI.WebGLGraphics'
        let values = s:pixi_webglgraphicss
      elseif object_type == 'PIXI.WebGLGraphicsData'
        let values = s:pixi_webglgraphicsdatas
      elseif object_type == 'PIXI.WebGLMaskManager'
        let values = s:pixi_webglmaskmanagers
      elseif object_type == 'PIXI.WebGLRenderer'
        let values = s:pixi_webglrenderers
      elseif object_type == 'PIXI.WebGLShaderManager'
        let values = s:pixi_webglshadermanagers
      elseif object_type == 'PIXI.WebGLSpriteBatch'
        let values = s:pixi_webglspritebatchs
      elseif object_type == 'PIXI.WebGLStencilManager'
        let values = s:pixi_webglstencilmanagers
      endif

      if !exists('values')
        if shortcontext =~ 'Math\.$'
          let values = s:maths
        elseif shortcontext =~ 'body\.$'
          let values = s:bodys
        elseif shortcontext =~ 'document\.$'
          let values = s:docus
        elseif shortcontext =~ 'history\.$'
          let values = s:hists
        elseif shortcontext =~ 'JSON\.$'
          let values = ['parse(', 'stringify(']
        elseif shortcontext =~ '\(local\|session\)Storage\.$'
          let values = s:storage
        elseif shortcontext =~ 'NodeFilter\.$'
          let values = s:nfilter
        elseif shortcontext =~ '\/.*\(\\\/\)\@!\/\.$'
          let values = s:reges
        elseif shortcontext =~ 'images\(\[.\{-}\]\)\?\.$'
          let values = s:imags
        elseif shortcontext =~ 'location\.$'
          let values = s:locas
        elseif shortcontext =~ 'navigator\.$'
          let values = s:navis
        elseif shortcontext =~ 'console\.$'
          let values = s:console
        elseif shortcontext =~ '\]\.$'
          let values = s:arrays
        elseif shortcontext =~ '\(}\|object\)\.$'
          let values = s:objes
        elseif shortcontext =~ 'screen\.$'
          let values = s:scres
        elseif shortcontext =~ 'style\.$'
          let values = s:styls
        elseif shortcontext =~ '\(top\|self\|window\)\.$'
          let values = s:winds
        elseif shortcontext =~ 'PIXI\.$'
          let values = s:pixis
        elseif shortcontext =~ 'AbstractFilter\.$'
          let values = s:pixi_abstractfilters
        elseif shortcontext =~ 'AjaxRequest\.$'
          let values = s:pixi_ajaxrequests
        elseif shortcontext =~ 'AlphaMaskFilter\.$'
          let values = s:pixi_alphamaskfilters
        elseif shortcontext =~ 'AsciiFilter\.$'
          let values = s:pixi_asciifilters
        elseif shortcontext =~ 'AssetLoader\.$'
          let values = s:pixi_assetloaders
        elseif shortcontext =~ 'AtlasLoader\.$'
          let values = s:pixi_atlasloaders
        elseif shortcontext =~ 'BaseTexture\.$'
          let values = s:pixi_basetextures
        elseif shortcontext =~ 'BitmapFontLoader\.$'
          let values = s:pixi_bitmapfontloaders
        elseif shortcontext =~ 'BitmapText\.$'
          let values = s:pixi_bitmaptexts
        elseif shortcontext =~ 'BlurFilter\.$'
          let values = s:pixi_blurfilters
        elseif shortcontext =~ 'BlurXFilter\.$'
          let values = s:pixi_blurxfilters
        elseif shortcontext =~ 'BlurYFilter\.$'
          let values = s:pixi_bluryfilters
        elseif shortcontext =~ 'CanvasBuffer\.$'
          let values = s:pixi_canvasbuffers
        elseif shortcontext =~ 'CanvasMaskManager\.$'
          let values = s:pixi_canvasmaskmanagers
        elseif shortcontext =~ 'CanvasRenderer\.$'
          let values = s:pixi_canvasrenderers
        elseif shortcontext =~ 'CanvasTinter\.$'
          let values = s:pixi_canvastinters
        elseif shortcontext =~ 'Circle\.$'
          let values = s:pixi_circles
        elseif shortcontext =~ 'ColorMatrixFilter\.$'
          let values = s:pixi_colormatrixfilters
        elseif shortcontext =~ 'ColorStepFilter\.$'
          let values = s:pixi_colorstepfilters
        elseif shortcontext =~ 'ComplexPrimitiveShader\.$'
          let values = s:pixi_complexprimitiveshaders
        elseif shortcontext =~ 'ConvolutionFilter\.$'
          let values = s:pixi_convolutionfilters
        elseif shortcontext =~ 'CrossHatchFilter\.$'
          let values = s:pixi_crosshatchfilters
        elseif shortcontext =~ 'DisplacementFilter\.$'
          let values = s:pixi_displacementfilters
        elseif shortcontext =~ 'DisplayObjectContainer\.$'
          let values = s:pixi_displayobjectcontainers
        elseif shortcontext =~ 'DotScreenFilter\.$'
          let values = s:pixi_dotscreenfilters
        elseif shortcontext =~ 'Ellipse\.$'
          let values = s:pixi_ellipses
        elseif shortcontext =~ 'Event\.$'
          let values = s:pixi_events
        elseif shortcontext =~ 'EventTarget\.$'
          let values = s:pixi_eventtargets
        elseif shortcontext =~ 'FilterBlock\.$'
          let values = s:pixi_filterblocks
        elseif shortcontext =~ 'FilterTexture\.$'
          let values = s:pixi_filtertextures
        elseif shortcontext =~ 'Graphics\.$'
          let values = s:pixi_graphicss
        elseif shortcontext =~ 'GrayFilter\.$'
          let values = s:pixi_grayfilters
        elseif shortcontext =~ 'ImageLoader\.$'
          let values = s:pixi_imageloaders
        elseif shortcontext =~ 'InteractionData\.$'
          let values = s:pixi_interactiondatas
        elseif shortcontext =~ 'InteractionManager\.$'
          let values = s:pixi_interactionmanagers
        elseif shortcontext =~ 'InvertFilter\.$'
          let values = s:pixi_invertfilters
        elseif shortcontext =~ 'JsonLoader\.$'
          let values = s:pixi_jsonloaders
        elseif shortcontext =~ 'Matrix\.$'
          let values = s:pixi_matrixs
        elseif shortcontext =~ 'MovieClip\.$'
          let values = s:pixi_movieclips
        elseif shortcontext =~ 'NoiseFilter\.$'
          let values = s:pixi_noisefilters
        elseif shortcontext =~ 'NormalMapFilter\.$'
          let values = s:pixi_normalmapfilters
        elseif shortcontext =~ 'PixelateFilter\.$'
          let values = s:pixi_pixelatefilters
        elseif shortcontext =~ 'PixiFastShader\.$'
          let values = s:pixi_pixifastshaders
        elseif shortcontext =~ 'PixiShader\.$'
          let values = s:pixi_pixishaders
        elseif shortcontext =~ 'Point\.$'
          let values = s:pixi_points
        elseif shortcontext =~ 'PolyK\.$'
          let values = s:pixi_polyks
        elseif shortcontext =~ 'Polygon\.$'
          let values = s:pixi_polygons
        elseif shortcontext =~ 'PrimitiveShader\.$'
          let values = s:pixi_primitiveshaders
        elseif shortcontext =~ 'RGBSplitFilter\.$'
          let values = s:pixi_rgbsplitfilters
        elseif shortcontext =~ 'Rectangle\.$'
          let values = s:pixi_rectangles
        elseif shortcontext =~ 'RenderTexture\.$'
          let values = s:pixi_rendertextures
        elseif shortcontext =~ 'Rope\.$'
          let values = s:pixi_ropes
        elseif shortcontext =~ 'Rounded Rectangle\.$'
          let values = s:pixi_rounded_rectangles
        elseif shortcontext =~ 'SepiaFilter\.$'
          let values = s:pixi_sepiafilters
        elseif shortcontext =~ 'SmartBlurFilter\.$'
          let values = s:pixi_smartblurfilters
        elseif shortcontext =~ 'Spine\.$'
          let values = s:pixi_spines
        elseif shortcontext =~ 'SpineLoader\.$'
          let values = s:pixi_spineloaders
        elseif shortcontext =~ 'Sprite\.$'
          let values = s:pixi_sprites
        elseif shortcontext =~ 'SpriteBatch\.$'
          let values = s:pixi_spritebatchs
        elseif shortcontext =~ 'SpriteSheetLoader\.$'
          let values = s:pixi_spritesheetloaders
        elseif shortcontext =~ 'Stage\.$'
          let values = s:pixi_stages
        elseif shortcontext =~ 'Strip\.$'
          let values = s:pixi_strips
        elseif shortcontext =~ 'StripShader\.$'
          let values = s:pixi_stripshaders
        elseif shortcontext =~ 'Text\.$'
          let values = s:pixi_texts
        elseif shortcontext =~ 'Texture\.$'
          let values = s:pixi_textures
        elseif shortcontext =~ 'TilingSprite\.$'
          let values = s:pixi_tilingsprites
        elseif shortcontext =~ 'TiltShiftFilter\.$'
          let values = s:pixi_tiltshiftfilters
        elseif shortcontext =~ 'TiltShiftXFilter\.$'
          let values = s:pixi_tiltshiftxfilters
        elseif shortcontext =~ 'TiltShiftYFilter\.$'
          let values = s:pixi_tiltshiftyfilters
        elseif shortcontext =~ 'TwistFilter\.$'
          let values = s:pixi_twistfilters
        elseif shortcontext =~ 'WebGLBlendModeManager\.$'
          let values = s:pixi_webglblendmodemanagers
        elseif shortcontext =~ 'WebGLFastSpriteBatch\.$'
          let values = s:pixi_webglfastspritebatchs
        elseif shortcontext =~ 'WebGLFilterManager\.$'
          let values = s:pixi_webglfiltermanagers
        elseif shortcontext =~ 'WebGLGraphics\.$'
          let values = s:pixi_webglgraphicss
        elseif shortcontext =~ 'WebGLGraphicsData\.$'
          let values = s:pixi_webglgraphicsdatas
        elseif shortcontext =~ 'WebGLMaskManager\.$'
          let values = s:pixi_webglmaskmanagers
        elseif shortcontext =~ 'WebGLRenderer\.$'
          let values = s:pixi_webglrenderers
        elseif shortcontext =~ 'WebGLShaderManager\.$'
          let values = s:pixi_webglshadermanagers
        elseif shortcontext =~ 'WebGLSpriteBatch\.$'
          let values = s:pixi_webglspritebatchs
        elseif shortcontext =~ 'WebGLStencilManager\.$'
          let values = s:pixi_webglstencilmanagers
        else
          let values = user_props + s:bodys + s:arrays + s:dates +
                \ s:funcs + s:numbs + s:reges + s:stris + s:docus +
                \ s:imags + s:locas + s:navis + s:objes + s:scres + s:winds + s:pixis
        endif
      endif

      for m in values
        if m =~? '^'.a:base
          call add(res, m)
        elseif m =~? a:base
          call add(res2, m)
        endif
      endfor

      unlet! values
      return res + res2

    endif

    let variables = filter(copy(file), 'v:val =~ "var\\s"')
    call map(variables, 'matchstr(v:val, ".\\{-}var\\s\\+\\zs.*\\ze")')
    call map(variables, 'substitute(v:val, ";\\|$", ",", "g")')
    let vars = []
    " This loop (and next one) is necessary to get variable names from
    " constructs like: var var1, var2, var3 = "something";
    for i in range(len(variables))
      let comma_separated = split(variables[i], ',\s*')
      call map(comma_separated, 'matchstr(v:val, "\\k\\+")')
      let vars += comma_separated
    endfor

    let variables = sort(vars)
    unlet! vars

    " Add "no var" variables.
    let undeclared_variables = filter(copy(file), 'v:val =~ "^\\s*\\k\\+\\s*="')
    let u_vars = []
    for i in range(len(undeclared_variables))
      let  split_equal = split(undeclared_variables[i], '\s*=')
      call map(split_equal, 'matchstr(v:val, "\\k\\+$")')
      let u_vars += split_equal
    endfor

    let variables += sort(u_vars)
    unlet! u_vars

    " Get functions
    let functions = filter(copy(file), 'v:val =~ "^\\s*function\\s"')
    let arguments = copy(functions)
    call map(functions, 'matchstr(v:val, "^\\s*function\\s\\+\\zs\\k\\+")')
    call map(functions, 'v:val."("')
    let functions = sort(functions)

    " Create table to keep arguments for additional 'menu' info
    let b:js_menuinfo = {}
    for i in arguments
      let g:ia = i
      let f_elements = matchlist(i, 'function\s\+\(\k\+\)\s*(\(.\{-}\))')
      if len(f_elements) == 3
        let b:js_menuinfo[f_elements[1].'('] = f_elements[2]
      endif
    endfor

    call map(arguments, 'matchstr(v:val, "function.\\{-}(\\zs.\\{-}\\ze)")')
    let jargs = join(arguments, ',')
    let jargs = substitute(jargs, '\s', '', 'g')
    let arguments = split(jargs, ',')
    let arguments = sort(arguments)


    let keywords = ['abstract', 'boolean', 'break', 'byte', 'case', 'catch', 'char', 'class', 'continue', 'debugger', 'default', 'delete', 'do', 'double ', 'else', 'enum', 'export', 'extends', 'false', 'final', 'finally', 'float', 'for', 'function', 'goto', 'if', 'implements', 'import', 'in ', 'instanceof', 'int', 'interface', 'long', 'native', 'new', 'null', 'package', 'private', 'protected', 'public', 'return', 'short', 'static', 'super ', 'switch', 'synchronized', 'this', 'throw', 'throws', 'transient', 'true', 'try', 'typeof', 'var', 'void', 'volatile', 'while', 'with', 'console']

    let values = variables + functions + arguments + keywords + s:winds

    for m in values
      if m =~? '^'.a:base
        call add(res, m)
      elseif m =~? a:base
        call add(res2, m)
      endif
    endfor

    let menu = res + res2
    let final_menu = []
    for i in range(len(menu))
      let item = menu[i]
      if item =~ '($'
        let kind = '[F]'
        if has_key(b:js_menuinfo, item)
          let m_info = b:js_menuinfo[item]
        else
          let m_info = ''
        endif
      else
        let kind = '[V]'
        let m_info = ''
      endif
      let final_menu += [{'word':item, 'menu':m_info, 'kind':kind}]
    endfor
    let g:fm = final_menu
    return final_menu

endfunction
