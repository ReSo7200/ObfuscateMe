.class public Leu/chainfire/libsuperuser/Shell$Pool;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    }
.end annotation


# static fields
.field public static final SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field public static final SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

.field public static final defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

.field private static onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

.field private static final pool:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Leu/chainfire/libsuperuser/Shell$Threaded;",
            ">;>;"
        }
    .end annotation
.end field

.field private static poolSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 3240
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Pool$1;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$Pool$1;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    .line 3253
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    .line 3255
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    .line 3256
    const/4 v0, 0x4

    sput v0, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    .line 3596
    const-string/jumbo v0, "sh"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    .line 3601
    const-string/jumbo v0, "su"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    move-result-object v0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$4600(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3221
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->releaseReservation(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    return-void
.end method

.method static synthetic access$4700(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3221
    invoke-static {p0}, Leu/chainfire/libsuperuser/Shell$Pool;->removeShell(Leu/chainfire/libsuperuser/Shell$Threaded;)V

    return-void
.end method

.method private static cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    .locals 14
    .param p0, "toRemove"    # Leu/chainfire/libsuperuser/Shell$Threaded;
    .param p1, "removeAll"    # Z

    .line 3369
    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    monitor-enter v0

    .line 3370
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-interface {v1, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 3371
    .local v1, "keySet":[Ljava/lang/String;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 3372
    array-length v0, v1

    :goto_0
    if-ge v2, v0, :cond_9

    aget-object v3, v1, v2

    .line 3373
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 3374
    .local v4, "shellsModify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    if-nez v4, :cond_0

    goto/16 :goto_7

    .line 3377
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3381
    .local v5, "shellsCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$SU;->isSU(Ljava/lang/String;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    sget v6, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    goto :goto_1

    :cond_1
    move v6, v7

    .line 3382
    .local v6, "wantedTotal":I
    :goto_1
    const/4 v8, 0x0

    .line 3383
    .local v8, "haveTotal":I
    const/4 v9, 0x0

    .line 3385
    .local v9, "haveAvailable":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v10

    sub-int/2addr v10, v7

    .local v10, "i":I
    :goto_2
    if-ltz v10, :cond_5

    .line 3386
    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3387
    .local v11, "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    invoke-virtual {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->isRunning()Z

    move-result v12

    if-eqz v12, :cond_3

    if-eq v11, p0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_3

    .line 3395
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 3396
    invoke-static {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 3397
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 3388
    :cond_3
    :goto_3
    const-string/jumbo v12, "shell removed"

    invoke-static {v12}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3389
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3390
    sget-object v12, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    monitor-enter v12

    .line 3391
    :try_start_1
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3392
    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3393
    if-eqz p1, :cond_4

    invoke-virtual {v11}, Leu/chainfire/libsuperuser/Shell$Threaded;->closeWhenIdle()V

    .line 3385
    .end local v11    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :cond_4
    :goto_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 3392
    .restart local v11    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 3402
    .end local v10    # "i":I
    .end local v11    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :cond_5
    if-le v8, v6, :cond_7

    if-le v9, v7, :cond_7

    .line 3403
    add-int/lit8 v10, v9, -0x1

    sub-int v11, v8, v6

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3404
    .local v10, "kill":I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    sub-int/2addr v11, v7

    .local v11, "i":I
    :goto_5
    if-ltz v11, :cond_7

    .line 3405
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3406
    .local v12, "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    invoke-static {v12}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v13

    if-nez v13, :cond_6

    invoke-virtual {v12}, Leu/chainfire/libsuperuser/Shell$Threaded;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 3407
    const-string/jumbo v13, "shell killed"

    invoke-static {v13}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3409
    sget-object v13, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    monitor-enter v13

    .line 3410
    :try_start_3
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3411
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3413
    invoke-static {v12, v7}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5200(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    .line 3414
    add-int/lit8 v10, v10, -0x1

    .line 3415
    if-nez v10, :cond_6

    .line 3416
    goto :goto_6

    .line 3411
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 3404
    .end local v12    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :cond_6
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 3421
    .end local v10    # "kill":I
    .end local v11    # "i":I
    :cond_7
    :goto_6
    sget-object v7, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    monitor-enter v7

    .line 3422
    :try_start_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_8

    .line 3423
    sget-object v10, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v10, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3425
    :cond_8
    monitor-exit v7

    .line 3372
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "shellsModify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .end local v5    # "shellsCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .end local v6    # "wantedTotal":I
    .end local v8    # "haveTotal":I
    .end local v9    # "haveAvailable":I
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 3425
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "shellsModify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .restart local v5    # "shellsCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .restart local v6    # "wantedTotal":I
    .restart local v8    # "haveTotal":I
    .restart local v9    # "haveAvailable":I
    :catchall_2
    move-exception v0

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 3428
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "shellsModify":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .end local v5    # "shellsCheck":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    .end local v6    # "wantedTotal":I
    .end local v8    # "haveTotal":I
    .end local v9    # "haveAvailable":I
    :cond_9
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getDebug()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3429
    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    monitor-enter v0

    .line 3430
    :try_start_6
    sget-object v2, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3431
    .restart local v3    # "key":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3432
    .local v4, "reserved":I
    sget-object v5, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 3433
    .local v5, "shells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    if-nez v5, :cond_a

    goto :goto_8

    .line 3434
    :cond_a
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_9
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    .line 3435
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/chainfire/libsuperuser/Shell$Threaded;

    invoke-static {v7}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v7

    if-eqz v7, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 3434
    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 3437
    .end local v6    # "i":I
    :cond_c
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v7, "cleanup: shell:%s count:%d reserved:%d"

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v3, v8, v9}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3438
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "reserved":I
    .end local v5    # "shells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    goto :goto_8

    .line 3439
    :cond_d
    monitor-exit v0

    goto :goto_a

    :catchall_3
    move-exception v2

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v2

    .line 3441
    :cond_e
    :goto_a
    return-void

    .line 3371
    .end local v1    # "keySet":[Ljava/lang/String;
    :catchall_4
    move-exception v1

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v1
.end method

.method public static declared-synchronized closeAll()V
    .locals 3

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3571
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-static {v1, v2}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3572
    monitor-exit v0

    return-void

    .line 3570
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static get(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p0, "shell"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3462
    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 9
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 3486
    const/4 v0, 0x0

    .line 3487
    .local v0, "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 3489
    .local v1, "shellUpper":Ljava/lang/String;
    const-class v2, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v2

    .line 3490
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v4, v3}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    .line 3493
    sget-object v3, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 3494
    .local v3, "shells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 3495
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Leu/chainfire/libsuperuser/Shell$Threaded;

    .line 3496
    .local v7, "instance":Leu/chainfire/libsuperuser/Shell$Threaded;
    invoke-static {v7}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5100(Leu/chainfire/libsuperuser/Shell$Threaded;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 3497
    move-object v0, v7

    .line 3498
    invoke-static {v0, v5}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5300(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    .line 3499
    goto :goto_1

    .line 3501
    .end local v7    # "instance":Leu/chainfire/libsuperuser/Shell$Threaded;
    :cond_0
    goto :goto_0

    .line 3503
    .end local v3    # "shells":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Leu/chainfire/libsuperuser/Shell$Threaded;>;"
    :cond_1
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3505
    if-nez v0, :cond_8

    .line 3507
    invoke-static {p0, p1, v5}, Leu/chainfire/libsuperuser/Shell$Pool;->newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    .line 3508
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3511
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v2

    if-nez v2, :cond_3

    .line 3512
    :cond_2
    invoke-virtual {v0, v4}, Leu/chainfire/libsuperuser/Shell$Threaded;->waitForOpened(Ljava/lang/Boolean;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3518
    :cond_3
    const-class v2, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v2

    .line 3519
    :try_start_1
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->wasPoolRemoveCalled()Z

    move-result v3

    if-nez v3, :cond_5

    .line 3520
    sget-object v3, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 3521
    sget-object v3, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3524
    :cond_4
    sget-object v3, Leu/chainfire/libsuperuser/Shell$Pool;->pool:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3526
    :cond_5
    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 3513
    :cond_6
    new-instance v2, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {v2}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw v2

    .line 3509
    :cond_7
    new-instance v2, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {v2}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw v2

    .line 3529
    :cond_8
    if-eqz p1, :cond_9

    .line 3530
    move-object v2, v0

    .line 3531
    .local v2, "fThreaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    invoke-virtual {v0}, Leu/chainfire/libsuperuser/Shell$Threaded;->startCallback()V

    .line 3533
    iget-object v3, v0, Leu/chainfire/libsuperuser/Shell$Threaded;->handler:Landroid/os/Handler;

    new-instance v4, Leu/chainfire/libsuperuser/Shell$Pool$2;

    invoke-direct {v4, p1, v2}, Leu/chainfire/libsuperuser/Shell$Pool$2;-><init>(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Leu/chainfire/libsuperuser/Shell$Threaded;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3546
    .end local v2    # "fThreaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :cond_9
    :goto_2
    return-object v0

    .line 3503
    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3
.end method

.method public static declared-synchronized getOnNewBuilderListener()Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3267
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3267
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getPoolSize()I
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3294
    :try_start_0
    sget v1, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 3294
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getUnpooled(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p0, "shell"    # Ljava/lang/String;

    .line 3337
    const/4 v0, 0x0

    invoke-static {p0, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public static getUnpooled(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 3353
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Leu/chainfire/libsuperuser/Shell$Pool;->newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public static getWrapper(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$PoolWrapper;
    .locals 2
    .param p0, "shell"    # Ljava/lang/String;

    .line 3584
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    if-eqz v0, :cond_0

    .line 3585
    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    return-object v0

    .line 3586
    :cond_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    if-eqz v0, :cond_1

    .line 3587
    sget-object v0, Leu/chainfire/libsuperuser/Shell$Pool;->SU:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    return-object v0

    .line 3589
    :cond_1
    new-instance v0, Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    invoke-direct {v0, p0}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static declared-synchronized newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3321
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    if-eqz v1, :cond_0

    .line 3322
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    invoke-interface {v1}, Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3324
    :cond_0
    :try_start_1
    sget-object v1, Leu/chainfire/libsuperuser/Shell$Pool;->defaultOnNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    invoke-interface {v1}, Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 3320
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private static newInstance(Ljava/lang/String;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 3
    .param p0, "shell"    # Ljava/lang/String;
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .param p2, "pooled"    # Z

    .line 3357
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "newInstance(shell:%s, pooled:%d)"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3358
    invoke-static {}, Leu/chainfire/libsuperuser/Shell$Pool;->newBuilder()Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    invoke-static {v0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Builder;->access$5000(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized releaseReservation(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 3
    .param p0, "threaded"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3553
    :try_start_0
    const-string v1, "releaseReservation"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3554
    const/4 v1, 0x0

    invoke-static {p0, v1}, Leu/chainfire/libsuperuser/Shell$Threaded;->access$5300(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V

    .line 3555
    const/4 v2, 0x0

    invoke-static {v2, v1}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3556
    monitor-exit v0

    return-void

    .line 3552
    .end local p0    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private static declared-synchronized removeShell(Leu/chainfire/libsuperuser/Shell$Threaded;)V
    .locals 2
    .param p0, "threaded"    # Leu/chainfire/libsuperuser/Shell$Threaded;

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3562
    :try_start_0
    const-string v1, "removeShell"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->logPool(Ljava/lang/String;)V

    .line 3563
    const/4 v1, 0x0

    invoke-static {p0, v1}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3564
    monitor-exit v0

    return-void

    .line 3561
    .end local p0    # "threaded":Leu/chainfire/libsuperuser/Shell$Threaded;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setOnNewBuilderListener(Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;)V
    .locals 1
    .param p0, "onNewBuilderListener"    # Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3277
    :try_start_0
    sput-object p0, Leu/chainfire/libsuperuser/Shell$Pool;->onNewBuilderListener:Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3278
    monitor-exit v0

    return-void

    .line 3276
    .end local p0    # "onNewBuilderListener":Leu/chainfire/libsuperuser/Shell$Pool$OnNewBuilderListener;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized setPoolSize(I)V
    .locals 3
    .param p0, "poolSize"    # I

    const-class v0, Leu/chainfire/libsuperuser/Shell$Pool;

    monitor-enter v0

    .line 3311
    const/4 v1, 0x1

    :try_start_0
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move p0, v1

    .line 3312
    sget v1, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    if-eq p0, v1, :cond_0

    .line 3313
    sput p0, Leu/chainfire/libsuperuser/Shell$Pool;->poolSize:I

    .line 3314
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Leu/chainfire/libsuperuser/Shell$Pool;->cleanup(Leu/chainfire/libsuperuser/Shell$Threaded;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3316
    :cond_0
    monitor-exit v0

    return-void

    .line 3310
    .end local p0    # "poolSize":I
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
