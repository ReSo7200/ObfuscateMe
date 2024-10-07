.class public Landroidx/test/core/view/PointerCoordsBuilder;
.super Ljava/lang/Object;
.source "PointerCoordsBuilder.java"


# instance fields
.field private orientation:F

.field private pressure:F

.field private size:F

.field private toolMajor:F

.field private toolMinor:F

.field private touchMajor:F

.field private touchMinor:F

.field private x:F

.field private y:F


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    .line 9
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    .line 10
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    .line 11
    iput v0, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    .line 18
    return-void
.end method

.method public static newBuilder()Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 1

    .line 21
    new-instance v0, Landroidx/test/core/view/PointerCoordsBuilder;

    invoke-direct {v0}, Landroidx/test/core/view/PointerCoordsBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Landroid/view/MotionEvent$PointerCoords;
    .locals 2

    .line 58
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 59
    .local v0, "pointerCoords":Landroid/view/MotionEvent$PointerCoords;
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 60
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 61
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 62
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 63
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMajor:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 64
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMinor:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 65
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMajor:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 66
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMinor:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 67
    iget v1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->orientation:F

    iput v1, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 68
    return-object v0
.end method

.method public setCoords(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    .line 25
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->x:F

    .line 26
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->y:F

    .line 27
    return-object p0
.end method

.method public setOrientation(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "orientation"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "orientation"
        }
    .end annotation

    .line 53
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->orientation:F

    .line 54
    return-object p0
.end method

.method public setPressure(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "pressure"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pressure"
        }
    .end annotation

    .line 31
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->pressure:F

    .line 32
    return-object p0
.end method

.method public setSize(F)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "size"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 36
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->size:F

    .line 37
    return-object p0
.end method

.method public setTool(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "toolMajor"    # F
    .param p2, "toolMinor"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "toolMajor",
            "toolMinor"
        }
    .end annotation

    .line 47
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMajor:F

    .line 48
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->toolMinor:F

    .line 49
    return-object p0
.end method

.method public setTouch(FF)Landroidx/test/core/view/PointerCoordsBuilder;
    .locals 0
    .param p1, "touchMajor"    # F
    .param p2, "touchMinor"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "touchMajor",
            "touchMinor"
        }
    .end annotation

    .line 41
    iput p1, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMajor:F

    .line 42
    iput p2, p0, Landroidx/test/core/view/PointerCoordsBuilder;->touchMinor:F

    .line 43
    return-object p0
.end method
