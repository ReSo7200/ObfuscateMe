.class public Landroidx/test/platform/view/inspector/WindowInspectorCompat;
.super Ljava/lang/Object;
.source "WindowInspectorCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/platform/view/inspector/WindowInspectorCompat$ViewRetrievalException;
    }
.end annotation


# static fields
.field private static final getWindowManagerGlobalReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/internal/platform/reflect/ReflectiveMethod<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final windowViewsReflectiveField:Landroidx/test/internal/platform/reflect/ReflectiveField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/test/internal/platform/reflect/ReflectiveField<",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const-string v2, "android.view.WindowManagerGlobal"

    const-string v3, "getInstance"

    invoke-direct {v0, v2, v3, v1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getWindowManagerGlobalReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    .line 43
    new-instance v0, Landroidx/test/internal/platform/reflect/ReflectiveField;

    const-string v1, "mViews"

    invoke-direct {v0, v2, v1}, Landroidx/test/internal/platform/reflect/ReflectiveField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->windowViewsReflectiveField:Landroidx/test/internal/platform/reflect/ReflectiveField;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getGlobalWindowViews()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/platform/view/inspector/WindowInspectorCompat$ViewRetrievalException;
        }
    .end annotation

    .line 78
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkMainThread()V

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 81
    invoke-static {}, Landroid/view/inspector/WindowInspector;->getGlobalWindowViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getWindowManager()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getViews(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroidx/test/internal/platform/reflect/ReflectionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Landroidx/test/internal/platform/reflect/ReflectionException;
    new-instance v1, Landroidx/test/platform/view/inspector/WindowInspectorCompat$ViewRetrievalException;

    invoke-virtual {v0}, Landroidx/test/internal/platform/reflect/ReflectionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/test/platform/view/inspector/WindowInspectorCompat$ViewRetrievalException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static getViews(Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .param p0, "windowManagerGlobal"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "windowManagerGlobal"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/platform/reflect/ReflectionException;
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->windowViewsReflectiveField:Landroidx/test/internal/platform/reflect/ReflectiveField;

    invoke-virtual {v1, p0}, Landroidx/test/internal/platform/reflect/ReflectiveField;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static getWindowManager()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/test/internal/platform/reflect/ReflectionException;
        }
    .end annotation

    .line 92
    sget-object v0, Landroidx/test/platform/view/inspector/WindowInspectorCompat;->getWindowManagerGlobalReflectiveCall:Landroidx/test/internal/platform/reflect/ReflectiveMethod;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroidx/test/internal/platform/reflect/ReflectiveMethod;->invokeStatic([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
