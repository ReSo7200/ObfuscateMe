.class Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;
.super Ljava/lang/Object;
.source "Checks.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/test/internal/util/Checks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ThreadCheckerSingleton"
.end annotation


# static fields
.field private static final INSTANCE:Landroidx/test/internal/platform/ThreadChecker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 146
    const-class v0, Landroidx/test/internal/platform/ThreadChecker;

    new-instance v1, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$$ExternalSyntheticLambda0;-><init>()V

    .line 147
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/internal/platform/ThreadChecker;

    sput-object v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->INSTANCE:Landroidx/test/internal/platform/ThreadChecker;

    .line 146
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroidx/test/internal/platform/ThreadChecker;
    .locals 1

    .line 144
    sget-object v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->INSTANCE:Landroidx/test/internal/platform/ThreadChecker;

    return-object v0
.end method

.method static synthetic lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;
    .locals 1

    .line 150
    new-instance v0, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;

    invoke-direct {v0}, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$1;-><init>()V

    return-object v0
.end method
