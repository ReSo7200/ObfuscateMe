.class public Landroidx/test/platform/graphics/HardwareRendererCompat;
.super Ljava/lang/Object;
.source "HardwareRendererCompat.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HardwareRendererCompat"

.field private static final isDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/internal/platform/reflect/ReflectiveMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final setDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/internal/platform/reflect/ReflectiveMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    const-string v3, "android.graphics.HardwareRenderer"

    const-string v4, "isDrawingEnabled"

    invoke-direct {v0, v3, v4, v2}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/platform/graphics/HardwareRendererCompat;->isDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    .line 36
    new-instance v0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v1

    const-string/jumbo v1, "setDrawingEnabled"

    invoke-direct {v0, v3, v1, v2}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDrawingEnabled()Z
    .locals 4

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 51
    return v2

    .line 54
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/test/platform/graphics/HardwareRendererCompat;->isDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Landroidx/test/internal/platform/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroidx/test/internal/platform/reflect/ReflectionException;
    const-string v1, "HardwareRendererCompat"

    const-string v3, "Failed to reflectively call HardwareRenderer#isDrawingEnabled. It probably doesn\'t exist on this platform. Returning true."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v2
.end method

.method public static setDrawingEnabled(Z)V
    .locals 3
    .param p0, "renderingEnabled"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "renderingEnabled"
        }
    .end annotation

    .line 70
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_0

    .line 72
    return-void

    .line 76
    :cond_0
    :try_start_0
    sget-object v0, Landroidx/test/platform/graphics/HardwareRendererCompat;->setDrawingEnabledReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroidx/test/internal/platform/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Landroidx/test/internal/platform/reflect/ReflectionException;
    const-string v1, "HardwareRendererCompat"

    const-string v2, "Failed to reflectively call HardwareRenderer#setDrawingEnabled.  It probably doesn\'t exist on this platform. Ignoring."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0    # "e":Landroidx/test/internal/platform/reflect/ReflectionException;
    :goto_0
    return-void
.end method
