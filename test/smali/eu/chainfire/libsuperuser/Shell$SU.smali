.class public Leu/chainfire/libsuperuser/Shell$SU;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SU"
.end annotation


# static fields
.field private static isSELinuxEnforcing:Ljava/lang/Boolean;

.field private static suVersion:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 382
    const/4 v0, 0x0

    sput-object v0, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 384
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static available()Z
    .locals 2

    .line 449
    sget-object v0, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$SU;->run([Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 450
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x1

    invoke-static {v0, v1}, Leu/chainfire/libsuperuser/Shell;->parseAvailableResult(Ljava/util/List;Z)Z

    move-result v1

    return v1
.end method

.method public static declared-synchronized clearCachedResults()V
    .locals 4

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    .line 682
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 683
    sget-object v2, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 684
    sget-object v2, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 685
    monitor-exit v0

    return-void

    .line 681
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized isSELinuxEnforcing()Z
    .locals 8

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    .line 616
    :try_start_0
    sget-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 617
    const/4 v1, 0x0

    .line 621
    .local v1, "enforcing":Ljava/lang/Boolean;
    nop

    .line 622
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    const/4 v4, 0x1

    if-lt v2, v3, :cond_0

    .line 626
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v1, v2

    .line 630
    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 631
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/fs/selinux/enforce"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 632
    .local v3, "f":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    .line 634
    :try_start_1
    new-instance v5, Ljava/io/FileInputStream;

    const-string v6, "/sys/fs/selinux/enforce"

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 636
    .local v5, "is":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v7, 0x31

    if-ne v6, v7, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v2

    :goto_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v6

    .line 638
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 639
    nop

    .line 642
    .end local v5    # "is":Ljava/io/InputStream;
    goto :goto_1

    .line 638
    .restart local v5    # "is":Ljava/io/InputStream;
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 639
    nop

    .end local v1    # "enforcing":Ljava/lang/Boolean;
    .end local v3    # "f":Ljava/io/File;
    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    .end local v5    # "is":Ljava/io/InputStream;
    .restart local v1    # "enforcing":Ljava/lang/Boolean;
    .restart local v3    # "f":Ljava/io/File;
    :catch_0
    move-exception v5

    .line 648
    .end local v3    # "f":Ljava/io/File;
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 650
    :try_start_4
    const-string v3, "android.os.SELinux"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 651
    .local v3, "seLinux":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "isSELinuxEnforced"

    new-array v6, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 652
    .local v5, "isSELinuxEnforced":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v6

    .line 656
    .end local v3    # "seLinux":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "isSELinuxEnforced":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 653
    :catch_1
    move-exception v3

    .line 655
    .local v3, "e":Ljava/lang/Exception;
    :try_start_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v1, v4

    .line 660
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    if-nez v1, :cond_4

    .line 661
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object v1, v2

    .line 664
    :cond_4
    sput-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    .line 666
    .end local v1    # "enforcing":Ljava/lang/Boolean;
    :cond_5
    sget-object v1, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v0

    return v1

    .line 615
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public static isSU(Ljava/lang/String;)Z
    .locals 3
    .param p0, "shell"    # Ljava/lang/String;

    .line 540
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 541
    .local v0, "pos":I
    if-ltz v0, :cond_0

    .line 542
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 546
    :cond_0
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 547
    if-ltz v0, :cond_1

    .line 548
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 551
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static run(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 401
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x0

    const-string/jumbo v3, "su"

    invoke-static {v3, v0, v2, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 419
    .local p0, "commands":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "su"

    invoke-static {v3, v1, v2, v0}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static run([Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "commands"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 435
    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string/jumbo v2, "su"

    invoke-static {v2, p0, v0, v1}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static shell(ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "uid"    # I
    .param p1, "context"    # Ljava/lang/String;

    .line 567
    const-string/jumbo v0, "su"

    .line 569
    .local v0, "shell":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-static {}, Leu/chainfire/libsuperuser/Shell$SU;->isSELinuxEnforcing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    const/4 v1, 0x0

    invoke-static {v1}, Leu/chainfire/libsuperuser/Shell$SU;->version(Z)Ljava/lang/String;

    move-result-object v1

    .line 571
    .local v1, "display":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-static {v2}, Leu/chainfire/libsuperuser/Shell$SU;->version(Z)Ljava/lang/String;

    move-result-object v2

    .line 575
    .local v2, "internal":Ljava/lang/String;
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 577
    const-string v3, "SUPERSU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 578
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xbe

    if-lt v3, v4, :cond_0

    .line 579
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "%s --context %s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 585
    .end local v1    # "display":Ljava/lang/String;
    .end local v2    # "internal":Ljava/lang/String;
    :cond_0
    if-lez p0, :cond_1

    .line 586
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s %d"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 589
    :cond_1
    return-object v0
.end method

.method public static shellMountMaster()Ljava/lang/String;
    .locals 1

    .line 602
    nop

    .line 603
    const-string/jumbo v0, "su --mount-master"

    return-object v0
.end method

.method public static declared-synchronized version(Z)Ljava/lang/String;
    .locals 10
    .param p0, "internal"    # Z

    const-class v0, Leu/chainfire/libsuperuser/Shell$SU;

    monitor-enter v0

    .line 476
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 477
    .local v3, "idx":I
    :goto_0
    :try_start_0
    sget-object v4, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    aget-object v4, v4, v3

    if-nez v4, :cond_8

    .line 478
    const/4 v4, 0x0

    .line 481
    .local v4, "version":Ljava/lang/String;
    invoke-static {}, Leu/chainfire/libsuperuser/Shell;->access$000()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_2

    .line 482
    if-eqz p0, :cond_1

    const-string/jumbo v5, "su -V"

    goto :goto_1

    :cond_1
    const-string/jumbo v5, "su -v"

    :goto_1
    new-array v1, v1, [Ljava/lang/String;

    const-string v7, "exit"

    aput-object v7, v1, v2

    invoke-static {v5, v1, v6, v2}, Leu/chainfire/libsuperuser/Shell;->run(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 489
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    .local v5, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    .line 492
    sget-object v7, Leu/chainfire/libsuperuser/Shell$Pool;->SH:Leu/chainfire/libsuperuser/Shell$PoolWrapper;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    if-eqz p0, :cond_3

    const-string/jumbo v9, "su -V"

    goto :goto_2

    :cond_3
    const-string/jumbo v9, "su -v"

    :goto_2
    aput-object v9, v8, v2

    const-string v9, "exit"

    aput-object v9, v8, v1

    invoke-virtual {v7, v8, v5, v6, v2}, Leu/chainfire/libsuperuser/Shell$PoolWrapper;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    :try_end_1
    .catch Leu/chainfire/libsuperuser/Shell$ShellDiedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    move-object v1, v5

    goto :goto_3

    .line 501
    :catch_0
    move-exception v1

    move-object v1, v5

    .line 506
    .end local v5    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    if-eqz v1, :cond_7

    .line 507
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 508
    .local v5, "line":Ljava/lang/String;
    if-nez p0, :cond_4

    .line 509
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_6

    .line 510
    move-object v4, v5

    .line 511
    goto :goto_6

    .line 515
    :cond_4
    :try_start_3
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lez v6, :cond_5

    .line 516
    move-object v4, v5

    .line 517
    goto :goto_6

    .line 521
    :cond_5
    goto :goto_5

    .line 519
    :catch_1
    move-exception v6

    .line 523
    .end local v5    # "line":Ljava/lang/String;
    :cond_6
    :goto_5
    goto :goto_4

    .line 526
    :cond_7
    :goto_6
    :try_start_4
    sget-object v2, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    aput-object v4, v2, v3

    .line 528
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "version":Ljava/lang/String;
    :cond_8
    sget-object v1, Leu/chainfire/libsuperuser/Shell$SU;->suVersion:[Ljava/lang/String;

    aget-object v1, v1, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit v0

    return-object v1

    .line 475
    .end local v3    # "idx":I
    .end local p0    # "internal":Z
    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p0
.end method
