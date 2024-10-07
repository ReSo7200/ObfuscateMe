.class public final synthetic Landroidx/test/internal/util/Checks$ThreadCheckerSingleton$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Ljava/lang/Object;
    .locals 1

    .line 0
    invoke-static {}, Landroidx/test/internal/util/Checks$ThreadCheckerSingleton;->lambda$static$0()Landroidx/test/internal/platform/ThreadChecker;

    move-result-object v0

    return-object v0
.end method
