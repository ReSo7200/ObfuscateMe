.class public final Landroidx/test/platform/app/AppComponentFactoryRegistry;
.super Ljava/lang/Object;
.source "AppComponentFactoryRegistry.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J&\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\u0008\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007J\u001a\u0010\u0013\u001a\u0004\u0018\u00010\u00142\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0007J\u0008\u0010\u0015\u001a\u00020\u0016H\u0003R0\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@FX\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0006\u0010\u0002\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Landroidx/test/platform/app/AppComponentFactoryRegistry;",
        "",
        "()V",
        "value",
        "Landroid/app/AppComponentFactory;",
        "appComponentFactory",
        "getAppComponentFactory$annotations",
        "getAppComponentFactory",
        "()Landroid/app/AppComponentFactory;",
        "setAppComponentFactory",
        "(Landroid/app/AppComponentFactory;)V",
        "instantiateActivity",
        "Landroid/app/Activity;",
        "cl",
        "Ljava/lang/ClassLoader;",
        "className",
        "",
        "intent",
        "Landroid/content/Intent;",
        "instantiateApplication",
        "Landroid/app/Application;",
        "isVersionCodeAtLeastP",
        "",
        "runner_monitor_java_androidx_test-monitor_kt"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/test/platform/app/AppComponentFactoryRegistry;

.field private static volatile appComponentFactory:Landroid/app/AppComponentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;

    invoke-direct {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;-><init>()V

    sput-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->INSTANCE:Landroidx/test/platform/app/AppComponentFactoryRegistry;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAppComponentFactory()Landroid/app/AppComponentFactory;
    .locals 1

    .line 52
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->appComponentFactory:Landroid/app/AppComponentFactory;

    return-object v0
.end method

.method public static synthetic getAppComponentFactory$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->INSTANCE:Landroidx/test/platform/app/AppComponentFactoryRegistry;

    invoke-direct {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->isVersionCodeAtLeastP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->appComponentFactory:Landroid/app/AppComponentFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    goto :goto_0

    .line 106
    :cond_0
    nop

    .line 107
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static synthetic instantiateActivity$default(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;ILjava/lang/Object;)Landroid/app/Activity;
    .locals 0

    .line 98
    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    .line 101
    const/4 p2, 0x0

    .line 98
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object p0

    return-object p0
.end method

.method public static final instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    .locals 2
    .param p0, "cl"    # Ljava/lang/ClassLoader;
    .param p1, "className"    # Ljava/lang/String;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cl"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "className"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->INSTANCE:Landroidx/test/platform/app/AppComponentFactoryRegistry;

    invoke-direct {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->isVersionCodeAtLeastP()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 79
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->appComponentFactory:Landroid/app/AppComponentFactory;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v1

    goto :goto_0

    .line 81
    :cond_0
    nop

    .line 82
    :cond_1
    :goto_0
    return-object v1
.end method

.method private final isVersionCodeAtLeastP()Z
    .locals 2

    .line 110
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final setAppComponentFactory(Landroid/app/AppComponentFactory;)V
    .locals 2
    .param p0, "value"    # Landroid/app/AppComponentFactory;

    .line 54
    sget-object v0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->INSTANCE:Landroidx/test/platform/app/AppComponentFactoryRegistry;

    invoke-direct {v0}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->isVersionCodeAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sput-object p0, Landroidx/test/platform/app/AppComponentFactoryRegistry;->appComponentFactory:Landroid/app/AppComponentFactory;

    .line 58
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 55
    .local v0, "$i$a$-check-AppComponentFactoryRegistry$appComponentFactory$1":I
    nop

    .line 54
    .end local v0    # "$i$a$-check-AppComponentFactoryRegistry$appComponentFactory$1":I
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppComponentFactoryRegistry is not supported on \'VERSION.SDK_INT < VERSION_CODES.P\'"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
