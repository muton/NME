package flash.display;

@:final extern class Graphics {
	function new() : Void;
	function beginBitmapFill(bitmap : BitmapData, ?matrix : flash.geom.Matrix, repeat : Bool = true, smooth : Bool = false) : Void;
	function beginFill(color : UInt, alpha : Float = 1) : Void;
	function beginGradientFill(type : GradientType, colors : Array<UInt>, alphas : Array<Dynamic>, ratios : Array<Dynamic>, ?matrix : flash.geom.Matrix, ?spreadMethod : SpreadMethod, ?interpolationMethod : InterpolationMethod, focalPointRatio : Float = 0) : Void;
	@:require(flash10) function beginShaderFill(shader : Shader, ?matrix : flash.geom.Matrix) : Void;
	function clear() : Void;
	@:require(flash10) function copyFrom(sourceGraphics : Graphics) : Void;
	@:require(flash11) function cubicCurveTo(controlX1 : Float, controlY1 : Float, controlX2 : Float, controlY2 : Float, anchorX : Float, anchorY : Float) : Void;
	function curveTo(controlX : Float, controlY : Float, anchorX : Float, anchorY : Float) : Void;
	function drawCircle(x : Float, y : Float, radius : Float) : Void;
	function drawEllipse(x : Float, y : Float, width : Float, height : Float) : Void;
	@:require(flash10) function drawGraphicsData(graphicsData : haxe.ds.Vector<IGraphicsData>) : Void;
	@:require(flash10) function drawPath(commands : haxe.ds.Vector<Int>, data : haxe.ds.Vector<Float>, ?winding : GraphicsPathWinding) : Void;
	function drawRect(x : Float, y : Float, width : Float, height : Float) : Void;
	function drawRoundRect(x : Float, y : Float, width : Float, height : Float, ellipseWidth : Float, ?ellipseHeight : Float) : Void;
	function drawRoundRectComplex(x : Float, y : Float, width : Float, height : Float, topLeftRadius : Float, topRightRadius : Float, bottomLeftRadius : Float, bottomRightRadius : Float) : Void;
	@:require(flash10) function drawTriangles(vertices : haxe.ds.Vector<Float>, ?indices : haxe.ds.Vector<Int>, ?uvtData : haxe.ds.Vector<Float>, ?culling : TriangleCulling) : Void;
	function endFill() : Void;
	@:require(flash10) function lineBitmapStyle(bitmap : BitmapData, ?matrix : flash.geom.Matrix, repeat : Bool = true, smooth : Bool = false) : Void;
	function lineGradientStyle(type : GradientType, colors : Array<UInt>, alphas : Array<Dynamic>, ratios : Array<Dynamic>, ?matrix : flash.geom.Matrix, ?spreadMethod : SpreadMethod, ?interpolationMethod : InterpolationMethod, focalPointRatio : Float = 0) : Void;
	@:require(flash10) function lineShaderStyle(shader : Shader, ?matrix : flash.geom.Matrix) : Void;
	function lineStyle(?thickness : Float, color : UInt = 0, alpha : Float = 1, pixelHinting : Bool = false, ?scaleMode : LineScaleMode, ?caps : CapsStyle, ?joints : JointStyle, miterLimit : Float = 3) : Void;
	function lineTo(x : Float, y : Float) : Void;
	function moveTo(x : Float, y : Float) : Void;
	
	
	inline function drawTiles (sheet:nme.display.Tilesheet, tileData:Array<Float>, smooth:Bool = false, flags:Int = 0):Void {
		
		sheet.drawTiles (cast this, tileData, smooth, flags);
		
	}
}
