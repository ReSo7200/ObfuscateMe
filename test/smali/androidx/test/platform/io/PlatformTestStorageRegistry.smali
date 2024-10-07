.class public final Landroidx/test/platform/io/PlatformTestStorageRegistry;
.super Ljava/lang/Object;
.source "PlatformTestStorageRegistry.java"


# static fields
.field private static testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    const-class v0, Landroidx/test/platform/io/PlatformTestStorage;

    new-instance v1, Landroidx/test/platform/io/PlatformTestStorageRegistry$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/test/platform/io/PlatformTestStorageRegistry$$ExternalSyntheticLambda0;-><init>()V

    .line 35
    invoke-static {v0, v1}, Landroidx/test/internal/platform/ServiceLoaderWrapper;->loadSingleService(Ljava/lang/Class;Landroidx/test/internal/platform/ServiceLoaderWrapper$Factory;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/test/platform/io/PlatformTestStorage;

    sput-object v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Landroidx/test/platform/io/PlatformTestStorage;
    .locals 2

    const-class v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;

    monitor-enter v0

    .line 72
    :try_start_0
    sget-object v1, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized registerInstance(Landroidx/test/platform/io/PlatformTestStorage;)V
    .locals 2
    .param p0, "instance"    # Landroidx/test/platform/io/PlatformTestStorage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "instance"
        }
    .end annotation

    const-class v0, Landroidx/test/platform/io/PlatformTestStorageRegistry;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {p0}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/test/platform/io/PlatformTestStorage;

    sput-object v1, Landroidx/test/platform/io/PlatformTestStorageRegistry;->testStorageInstance:Landroidx/test/platform/io/PlatformTestStorage;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit v0

    return-void

    .line 49
    .end local p0    # "instance":Landroidx/test/platform/io/PlatformTestStorage;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
