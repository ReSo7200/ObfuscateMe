.class public Leu/chainfire/libsuperuser/Shell$Interactive;
.super Ljava/lang/Object;
.source "Shell.java"

# interfaces
.implements Leu/chainfire/libsuperuser/Shell$SyncCommands;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Interactive"
.end annotation


# instance fields
.field private STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

.field private STDERRclosed:Z

.field private STDIN:Ljava/io/DataOutputStream;

.field private STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

.field private STDOUTclosed:Z

.field private final STDclosedSync:Ljava/lang/Object;

.field private final autoHandler:Z

.field private volatile bufferSTDERR:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bufferSTDOUT:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final callbackSync:Ljava/lang/Object;

.field protected volatile callbacks:I

.field protected volatile closed:Z

.field private volatile command:Leu/chainfire/libsuperuser/Shell$Command;

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private volatile doCloseWhenIdle:Z

.field private final emptyStringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final handler:Landroid/os/Handler;

.field private volatile idle:Z

.field private final idleSync:Ljava/lang/Object;

.field protected volatile inClosingJoin:Z

.field private volatile lastExitCode:I

.field private volatile lastMarkerSTDERR:Ljava/lang/String;

.field private volatile lastMarkerSTDOUT:Ljava/lang/String;

.field private volatile lastOpening:Z

.field private final onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private final onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private volatile opening:Z

.field private final openingSync:Ljava/lang/Object;

.field private process:Ljava/lang/Process;

.field private volatile running:Z

.field private final shell:Ljava/lang/String;

.field private shellDiesOnSTDOUTERRClose:Z

.field private final wantSTDERR:Z

.field private watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private volatile watchdogCount:I

.field private watchdogTimeout:I


# direct methods
.method protected constructor <init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V
    .locals 5
    .param p1, "builder"    # Leu/chainfire/libsuperuser/Shell$Builder;
    .param p2, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 1595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1543
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 1545
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 1547
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1549
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 1551
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDclosedSync:Ljava/lang/Object;

    .line 1552
    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    .line 1553
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    .line 1554
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1557
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 1558
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    .line 1559
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1560
    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 1561
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 1562
    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 1564
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    .line 1565
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->inClosingJoin:Z

    .line 1567
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    .line 1568
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    .line 1569
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    .line 1570
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    .line 1572
    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    .line 1573
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    .line 1575
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    .line 1577
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1579
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1581
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1596
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->autoHandler:Z

    .line 1597
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    .line 1598
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shellDiesOnSTDOUTERRClose:Z

    .line 1599
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    .line 1600
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    .line 1601
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    .line 1602
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1603
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1604
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I

    move-result v0

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    .line 1609
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->autoHandler:Z

    if-eqz v0, :cond_0

    .line 1610
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    goto :goto_0

    .line 1612
    :cond_0
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 1615
    :goto_0
    if-nez p2, :cond_1

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Builder;->access$1100(Leu/chainfire/libsuperuser/Shell$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1616
    :cond_1
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    .line 1617
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1621
    const/16 v0, 0x3c

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    .line 1622
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    new-instance v2, Leu/chainfire/libsuperuser/Shell$Command;

    sget-object v3, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    new-instance v4, Leu/chainfire/libsuperuser/Shell$Interactive$1;

    invoke-direct {v4, p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive$1;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    invoke-direct {v2, v3, v1, v4}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1666
    :cond_2
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->open()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 1667
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 1668
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 1669
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$2;

    invoke-direct {v1, p0, p2}, Leu/chainfire/libsuperuser/Shell$Interactive$2;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1680
    :cond_3
    const/4 v0, -0x3

    invoke-interface {p2, v1, v0}, Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;->onOpenResult(ZI)V

    .line 1683
    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic access$1200(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1302(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Z

    .line 1526
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    return p1
.end method

.method static synthetic access$1402(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # I

    .line 1526
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    return p1
.end method

.method static synthetic access$1500(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->handleWatchdog()V

    return-void
.end method

.method static synthetic access$2400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2500(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shellDiesOnSTDOUTERRClose:Z

    return v0
.end method

.method static synthetic access$2600(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    return-object v0
.end method

.method static synthetic access$2700(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    return-object v0
.end method

.method static synthetic access$2800(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDclosedSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    return v0
.end method

.method static synthetic access$2902(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Z

    .line 1526
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUTclosed:Z

    return p1
.end method

.method static synthetic access$3000(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    return v0
.end method

.method static synthetic access$3002(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Z

    .line 1526
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERRclosed:Z

    return p1
.end method

.method static synthetic access$3100(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/Shell$Command;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    return-object v0
.end method

.method static synthetic access$3102(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$Command;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Leu/chainfire/libsuperuser/Shell$Command;

    .line 1526
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    return-object p1
.end method

.method static synthetic access$3200(Leu/chainfire/libsuperuser/Shell$Interactive;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForCallbacks()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3400(Leu/chainfire/libsuperuser/Shell$Interactive;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3500(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Leu/chainfire/libsuperuser/Shell$Command;
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Ljava/io/InputStream;

    .line 1526
    invoke-direct/range {p0 .. p5}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3602(Leu/chainfire/libsuperuser/Shell$Interactive;Z)Z
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Z

    .line 1526
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    return p1
.end method

.method static synthetic access$3700(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V

    return-void
.end method

.method static synthetic access$3800(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 1526
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Interactive;->addBuffer(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3900(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$4000(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/Object;
    .param p3, "x3"    # Z

    .line 1526
    invoke-direct {p0, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive;->processLine(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method static synthetic access$4102(Leu/chainfire/libsuperuser/Shell$Interactive;I)I
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # I

    .line 1526
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    return p1
.end method

.method static synthetic access$4202(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1526
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4300(Leu/chainfire/libsuperuser/Shell$Interactive;)V
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->processMarker()V

    return-void
.end method

.method static synthetic access$4400(Leu/chainfire/libsuperuser/Shell$Interactive;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;

    .line 1526
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$4502(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Interactive;
    .param p1, "x1"    # Ljava/lang/String;

    .line 1526
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    return-object p1
.end method

.method private declared-synchronized addBuffer(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "isSTDERR"    # Z

    monitor-enter p0

    .line 1963
    if-eqz p2, :cond_1

    .line 1964
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1966
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :cond_0
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->wantSTDERR:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1967
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1969
    :cond_1
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 1970
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1972
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 1962
    .end local p1    # "line":Ljava/lang/String;
    .end local p2    # "isSTDERR":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private declared-synchronized handleWatchdog()V
    .locals 8

    monitor-enter p0

    .line 1736
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1737
    monitor-exit p0

    return-void

    .line 1738
    :cond_0
    :try_start_1
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 1739
    monitor-exit p0

    return-void

    .line 1741
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1742
    const/4 v0, -0x2

    .line 1743
    .local v0, "exitCode":I
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "[%s%%] SHELL_DIED"

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1744
    .end local v0    # "exitCode":I
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :cond_2
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ge v0, v1, :cond_3

    .line 1745
    monitor-exit p0

    return-void

    .line 1747
    :cond_3
    const/4 v0, -0x1

    .line 1748
    .restart local v0    # "exitCode":I
    :try_start_3
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "[%s%%] WATCHDOG_EXIT"

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 1751
    :goto_0
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    if-eqz v1, :cond_4

    .line 1753
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    const/4 v7, 0x0

    move-object v2, p0

    move v4, v0

    invoke-direct/range {v2 .. v7}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    .line 1757
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1758
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1759
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1760
    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 1761
    const/4 v2, 0x0

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1763
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdown()V

    .line 1764
    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1765
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->kill()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1766
    monitor-exit p0

    return-void

    .line 1735
    .end local v0    # "exitCode":I
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private declared-synchronized open()Z
    .locals 8

    monitor-enter p0

    .line 2062
    :try_start_0
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "[%s%%] START"

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2067
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 2068
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    goto :goto_1

    .line 2070
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2071
    .local v1, "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->getenv()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2072
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->environment:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2073
    const/4 v2, 0x0

    .line 2074
    .local v2, "i":I
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    .line 2075
    .local v3, "env":[Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 2076
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v2

    .line 2077
    nop

    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 2078
    goto :goto_0

    .line 2079
    :cond_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2083
    .end local v1    # "newEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i":I
    .end local v3    # "env":[Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    if-eqz v1, :cond_2

    .line 2085
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$6;

    invoke-direct {v1, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$6;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    .line 2126
    .local v1, "onStreamClosedListener":Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;
    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    .line 2127
    new-instance v2, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2128
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Leu/chainfire/libsuperuser/Shell$Interactive$7;

    invoke-direct {v5, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$7;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v2, v3, v4, v5, v1}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2178
    new-instance v2, Leu/chainfire/libsuperuser/StreamGobbler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    .line 2179
    invoke-virtual {v4}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v4

    new-instance v5, Leu/chainfire/libsuperuser/Shell$Interactive$8;

    invoke-direct {v5, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$8;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    invoke-direct {v2, v3, v4, v5, v1}, Leu/chainfire/libsuperuser/StreamGobbler;-><init>(Ljava/lang/String;Ljava/io/InputStream;Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;)V

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    .line 2213
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 2214
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->start()V

    .line 2216
    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 2217
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 2219
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2221
    monitor-exit p0

    return v2

    .line 2083
    .end local v1    # "onStreamClosedListener":Leu/chainfire/libsuperuser/StreamGobbler$OnStreamClosedListener;
    :cond_2
    :try_start_2
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2222
    :catch_0
    move-exception v1

    .line 2224
    .local v1, "e":Ljava/io/IOException;
    monitor-exit p0

    return v0

    .line 2061
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method private postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    .locals 9
    .param p1, "fCommand"    # Leu/chainfire/libsuperuser/Shell$Command;
    .param p2, "fExitCode"    # I
    .param p5, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            ")Z"
        }
    .end annotation

    .line 1991
    .local p3, "fSTDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "fSTDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    nop

    .line 1992
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1993
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1994
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1995
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1997
    return v1

    .line 2002
    :cond_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v0

    sget-object v2, Leu/chainfire/libsuperuser/Shell;->availableTestCommands:[Ljava/lang/String;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 2017
    :cond_1
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 2018
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v8, Leu/chainfire/libsuperuser/Shell$Interactive$5;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p5

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Leu/chainfire/libsuperuser/Shell$Interactive$5;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/io/InputStream;Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2039
    const/4 v0, 0x0

    return v0

    .line 2003
    :cond_2
    :goto_0
    if-nez p5, :cond_9

    .line 2004
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2005
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v2

    if-eqz p3, :cond_3

    move-object v3, p3

    goto :goto_1

    :cond_3
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_1
    invoke-interface {v0, v2, p2, v3}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;->onCommandResult(IILjava/util/List;)V

    .line 2006
    :cond_4
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2007
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v2

    if-eqz p3, :cond_5

    move-object v3, p3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_2
    if-eqz p4, :cond_6

    move-object v4, p4

    goto :goto_3

    :cond_6
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->emptyStringList:Ljava/util/List;

    :goto_3
    invoke-interface {v0, v2, p2, v3, v4}, Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;->onCommandResult(IILjava/util/List;Ljava/util/List;)V

    .line 2008
    :cond_7
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 2009
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2200(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v2

    invoke-interface {v0, v2, p2}, Leu/chainfire/libsuperuser/Shell$OnCommandLineListener;->onCommandResult(II)V

    .line 2010
    :cond_8
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2011
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$2300(Leu/chainfire/libsuperuser/Shell$Command;)I

    move-result v2

    invoke-interface {v0, v2, p2}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onCommandResult(II)V

    goto :goto_4

    .line 2012
    :cond_9
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2013
    invoke-static {p1}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v0

    invoke-interface {v0, p5}, Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;->onInputStream(Ljava/io/InputStream;)V

    .line 2015
    :cond_a
    :goto_4
    return v1
.end method

.method private declared-synchronized processLine(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "line"    # Ljava/lang/String;
    .param p2, "listener"    # Ljava/lang/Object;
    .param p3, "isSTDERR"    # Z

    monitor-enter p0

    .line 1925
    if-eqz p2, :cond_3

    .line 1926
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 1927
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startCallback()V

    .line 1928
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$4;

    invoke-direct {v1, p0, p2, p1, p3}, Leu/chainfire/libsuperuser/Shell$Interactive$4;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1945
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :cond_0
    instance-of v0, p2, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    if-eqz v0, :cond_1

    .line 1946
    move-object v0, p2

    check-cast v0, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;->onLine(Ljava/lang/String;)V

    goto :goto_0

    .line 1947
    :cond_1
    instance-of v0, p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 1948
    move-object v0, p2

    check-cast v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;

    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDOUT;->onSTDOUT(Ljava/lang/String;)V

    goto :goto_0

    .line 1949
    :cond_2
    instance-of v0, p2, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 1950
    move-object v0, p2

    check-cast v0, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;

    invoke-interface {v0, p1}, Leu/chainfire/libsuperuser/Shell$OnCommandLineSTDERR;->onSTDERR(Ljava/lang/String;)V

    goto :goto_0

    .line 1924
    .end local p1    # "line":Ljava/lang/String;
    .end local p2    # "listener":Ljava/lang/Object;
    .end local p3    # "isSTDERR":Z
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1954
    .restart local p1    # "line":Ljava/lang/String;
    .restart local p2    # "listener":Ljava/lang/Object;
    .restart local p3    # "isSTDERR":Z
    :cond_3
    :goto_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized processMarker()V
    .locals 7

    monitor-enter p0

    .line 1904
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1905
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1906
    invoke-static {v0}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1907
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    iget v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    .line 1908
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->stopWatchdog()V

    .line 1909
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1910
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1911
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1912
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 1913
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1914
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1916
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :cond_0
    monitor-exit p0

    return-void

    .line 1903
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private runNextCommand()V
    .locals 1

    .line 1726
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    .line 1727
    return-void
.end method

.method private runNextCommand(Z)V
    .locals 12
    .param p1, "notifyIdle"    # Z

    .line 1803
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    .line 1804
    .local v0, "running":Z
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-eqz v3, :cond_1

    .line 1805
    :cond_0
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 1806
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 1809
    :cond_1
    if-eqz v0, :cond_a

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v3, :cond_a

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 1810
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Leu/chainfire/libsuperuser/Shell$Command;

    .line 1811
    .local v3, "command":Leu/chainfire/libsuperuser/Shell$Command;
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1813
    const/4 v4, 0x0

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1814
    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1815
    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastExitCode:I

    .line 1816
    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDOUT:Ljava/lang/String;

    .line 1817
    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastMarkerSTDERR:Ljava/lang/String;

    .line 1819
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_9

    .line 1821
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    if-eqz v4, :cond_b

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eqz v4, :cond_b

    .line 1823
    :try_start_0
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1700(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1824
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    goto :goto_0

    .line 1825
    :cond_2
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1800(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandResultListener2;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 1826
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDOUT:Ljava/util/List;

    .line 1827
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v4}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->bufferSTDERR:Ljava/util/List;

    .line 1830
    :cond_3
    :goto_0
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 1831
    iput-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->command:Leu/chainfire/libsuperuser/Shell$Command;

    .line 1832
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 1833
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v4}, Leu/chainfire/libsuperuser/StreamGobbler;->isSuspended()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1834
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    iget-object v6, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v6}, Leu/chainfire/libsuperuser/StreamGobbler;->getId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 1837
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v4}, Leu/chainfire/libsuperuser/StreamGobbler;->suspendGobbling()V

    goto :goto_1

    .line 1842
    :cond_4
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    const-string v5, "echo inputstream\n"

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1843
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 1844
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v4}, Leu/chainfire/libsuperuser/StreamGobbler;->waitForSuspend()V

    goto :goto_1

    .line 1848
    :cond_5
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v4}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 1849
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->startWatchdog()V

    .line 1851
    :cond_6
    :goto_1
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1600(Leu/chainfire/libsuperuser/Shell$Command;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    .line 1852
    .local v7, "write":Ljava/lang/String;
    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v9, "[%s+] %s"

    iget-object v10, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1853
    invoke-virtual {v10, v11}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v10

    filled-new-array {v10, v7}, [Ljava/lang/Object;

    move-result-object v10

    .line 1852
    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Leu/chainfire/libsuperuser/Debug;->logCommand(Ljava/lang/String;)V

    .line 1854
    iget-object v8, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "UTF-8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write([B)V

    .line 1851
    .end local v7    # "write":Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1856
    :cond_7
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1857
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "echo "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " >&2\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 1858
    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    .line 1859
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$1900(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/Shell$OnCommandInputStreamListener;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 1860
    new-instance v4, Leu/chainfire/libsuperuser/MarkerInputStream;

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$2000(Leu/chainfire/libsuperuser/Shell$Command;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Leu/chainfire/libsuperuser/MarkerInputStream;-><init>(Leu/chainfire/libsuperuser/StreamGobbler;Ljava/lang/String;)V

    invoke-static {v3, v4}, Leu/chainfire/libsuperuser/Shell$Command;->access$2102(Leu/chainfire/libsuperuser/Shell$Command;Leu/chainfire/libsuperuser/MarkerInputStream;)Leu/chainfire/libsuperuser/MarkerInputStream;

    .line 1861
    invoke-static {v3}, Leu/chainfire/libsuperuser/Shell$Command;->access$2100(Leu/chainfire/libsuperuser/Shell$Command;)Leu/chainfire/libsuperuser/MarkerInputStream;

    move-result-object v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, p0

    move-object v5, v3

    invoke-direct/range {v4 .. v9}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1863
    :catch_0
    move-exception v4

    .line 1865
    :cond_8
    :goto_3
    goto :goto_4

    .line 1868
    :cond_9
    invoke-direct {p0, v2}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand(Z)V

    goto :goto_4

    .line 1870
    .end local v3    # "command":Leu/chainfire/libsuperuser/Shell$Command;
    :cond_a
    if-eqz v0, :cond_c

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-eqz v3, :cond_b

    goto :goto_5

    :cond_b
    :goto_4
    goto :goto_7

    .line 1872
    :cond_c
    :goto_5
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "[%s%%] SHELL_DIED"

    iget-object v5, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 1873
    :goto_6
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 1874
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Leu/chainfire/libsuperuser/Shell$Command;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v6, -0x2

    const/4 v7, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Leu/chainfire/libsuperuser/Shell$Interactive;->postCallback(Leu/chainfire/libsuperuser/Shell$Command;ILjava/util/List;Ljava/util/List;Ljava/io/InputStream;)Z

    goto :goto_6

    .line 1876
    :cond_d
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    .line 1879
    :goto_7
    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    if-eqz v3, :cond_f

    .line 1880
    if-eqz v0, :cond_e

    iget-boolean v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    if-eqz v3, :cond_e

    .line 1881
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    .line 1882
    invoke-virtual {p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 1884
    :cond_e
    if-eqz p1, :cond_f

    .line 1885
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1886
    :try_start_1
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1887
    monitor-exit v1

    goto :goto_8

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 1891
    :cond_f
    :goto_8
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez v1, :cond_10

    .line 1892
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    .line 1893
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    monitor-enter v1

    .line 1894
    :try_start_2
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 1895
    monitor-exit v1

    goto :goto_9

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 1897
    :cond_10
    :goto_9
    return-void
.end method

.method private startWatchdog()V
    .locals 9

    .line 1772
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogTimeout:I

    if-nez v0, :cond_0

    .line 1773
    return-void

    .line 1775
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdogCount:I

    .line 1776
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1777
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v3, Leu/chainfire/libsuperuser/Shell$Interactive$3;

    invoke-direct {v3, p0}, Leu/chainfire/libsuperuser/Shell$Interactive$3;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;)V

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual/range {v2 .. v8}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 1783
    return-void
.end method

.method private stopWatchdog()V
    .locals 1

    .line 1789
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 1790
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 1791
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->watchdog:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 1793
    :cond_0
    return-void
.end method

.method private waitForCallbacks()Z
    .locals 2

    .line 2453
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 2454
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    .line 2455
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 2463
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2464
    :goto_0
    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v1, :cond_0

    .line 2466
    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2469
    goto :goto_0

    .line 2467
    :catch_0
    move-exception v1

    .line 2468
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2471
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2473
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public declared-synchronized addCommand(Ljava/lang/Object;)V
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;

    monitor-enter p0

    .line 1702
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1703
    monitor-exit p0

    return-void

    .line 1701
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    .end local p1    # "commands":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "code"    # I
    .param p3, "onResultListener"    # Leu/chainfire/libsuperuser/Shell$OnResult;

    monitor-enter p0

    .line 1717
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->runNextCommand()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1719
    monitor-exit p0

    return-void

    .line 1716
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    .end local p1    # "commands":Ljava/lang/Object;
    .end local p2    # "code":I
    .end local p3    # "onResultListener":Leu/chainfire/libsuperuser/Shell$OnResult;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public close()V
    .locals 0

    .line 2244
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately()V

    .line 2245
    return-void
.end method

.method public closeImmediately()V
    .locals 1

    .line 2256
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    .line 2257
    return-void
.end method

.method protected closeImmediately(Z)V
    .locals 6
    .param p1, "fromIdle"    # Z

    .line 2261
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eqz v0, :cond_a

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    if-eqz v0, :cond_a

    .line 2263
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isIdle()Z

    move-result v0

    .line 2265
    .local v0, "_idle":Z
    monitor-enter p0

    .line 2266
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    if-nez v1, :cond_0

    .line 2267
    monitor-exit p0

    return-void

    .line 2268
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 2269
    const/4 v2, 0x1

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    .line 2270
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2272
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2273
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    .line 2274
    return-void

    .line 2280
    :cond_1
    if-nez v0, :cond_3

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 2281
    :cond_2
    const-string v1, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2282
    new-instance v1, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v2, "Application attempted to wait for a non-idle shell to close on the main thread"

    invoke-direct {v1, v2}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2285
    :cond_3
    :goto_0
    if-nez v0, :cond_4

    .line 2286
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 2290
    :cond_4
    :try_start_1
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    const-string v4, "exit\n"

    const-string v5, "UTF-8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->write([B)V

    .line 2291
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2299
    goto :goto_1

    .line 2332
    :catch_0
    move-exception v1

    goto :goto_4

    .line 2292
    :catch_1
    move-exception v3

    .line 2293
    .local v3, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "EPIPE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Stream closed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_1

    .line 2297
    :cond_5
    nop

    .end local v0    # "_idle":Z
    .end local p1    # "fromIdle":Z
    throw v3

    .line 2303
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v0    # "_idle":Z
    .restart local p1    # "fromIdle":Z
    :cond_6
    :goto_1
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2311
    :try_start_3
    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 2314
    goto :goto_2

    .line 2312
    :catch_2
    move-exception v3

    .line 2317
    :goto_2
    :try_start_4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2318
    :cond_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v3}, Leu/chainfire/libsuperuser/StreamGobbler;->resumeGobbling()V

    .line 2321
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq v3, v4, :cond_9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    iget-object v4, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    if-eq v3, v4, :cond_9

    .line 2322
    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->inClosingJoin:Z

    .line 2323
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDOUT:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->conditionalJoin()V

    .line 2324
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDERR:Leu/chainfire/libsuperuser/StreamGobbler;

    invoke-virtual {v2}, Leu/chainfire/libsuperuser/StreamGobbler;->conditionalJoin()V

    .line 2325
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->inClosingJoin:Z

    .line 2328
    :cond_9
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->stopWatchdog()V

    .line 2329
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v1}, Ljava/lang/Process;->destroy()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    .line 2330
    :catch_3
    move-exception v1

    .line 2334
    :goto_3
    nop

    .line 2336
    :goto_4
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "[%s%%] END"

    iget-object v3, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->shell:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2338
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V

    .line 2339
    return-void

    .line 2270
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 2261
    .end local v0    # "_idle":Z
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public closeWhenIdle()V
    .locals 2

    .line 2348
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2349
    invoke-virtual {p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->closeImmediately(Z)V

    goto :goto_0

    .line 2351
    :cond_0
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->doCloseWhenIdle:Z

    .line 2353
    :goto_0
    return-void
.end method

.method endCallback()V
    .locals 2

    .line 2047
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2048
    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 2049
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    if-nez v1, :cond_0

    .line 2050
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2052
    :cond_0
    monitor-exit v0

    .line 2053
    return-void

    .line 2052
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1687
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z

    if-nez v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1689
    :cond_0
    const-string v0, "Application did not close() interactive shell"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 1690
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;

    invoke-direct {v0}, Leu/chainfire/libsuperuser/Shell$ShellNotClosedException;-><init>()V

    throw v0

    .line 1692
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1693
    return-void
.end method

.method public hasCommands()Z
    .locals 1

    .line 2585
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHandler()Z
    .locals 1

    .line 2575
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized isIdle()Z
    .locals 2

    monitor-enter p0

    .line 2436
    :try_start_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2437
    const/4 v0, 0x1

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 2438
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 2439
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2440
    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2441
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2442
    :try_start_2
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez v0, :cond_0

    .line 2443
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    .line 2444
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 2445
    :try_start_3
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2446
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :catchall_1
    move-exception v1

    goto :goto_0

    .line 2441
    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v1

    .line 2449
    :cond_0
    :goto_1
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    monitor-exit p0

    return v0

    .line 2435
    :catchall_3
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v0
.end method

.method public isOpening()Z
    .locals 1

    .line 2407
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 2417
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2418
    return v1

    .line 2421
    :cond_0
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->exitValue()I
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2422
    return v1

    .line 2423
    :catch_0
    move-exception v0

    .line 2426
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized kill()V
    .locals 3

    monitor-enter p0

    .line 2363
    :try_start_0
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    if-eqz v0, :cond_1

    .line 2365
    const/4 v0, 0x0

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->running:Z

    .line 2366
    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2369
    :try_start_1
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->STDIN:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2372
    goto :goto_0

    .line 2370
    .end local p0    # "this":Leu/chainfire/libsuperuser/Shell$Interactive;
    :catch_0
    move-exception v2

    .line 2374
    :goto_0
    :try_start_2
    iget-object v2, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->process:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 2377
    goto :goto_1

    .line 2375
    :catch_1
    move-exception v2

    .line 2379
    :goto_1
    :try_start_3
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z

    .line 2380
    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    .line 2381
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2382
    :try_start_4
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2383
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2384
    :try_start_5
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    if-nez v0, :cond_0

    .line 2385
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z

    iput-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->lastOpening:Z

    .line 2386
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    monitor-enter v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2387
    :try_start_6
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2388
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v1

    .line 2391
    :cond_0
    :goto_2
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->onClosed()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2392
    monitor-exit p0

    return-void

    .line 2383
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1

    .line 2363
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2362
    :catchall_2
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v0
.end method

.method protected onClosed()V
    .locals 0

    .line 2235
    return-void
.end method

.method public run(Ljava/lang/Object;)I
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2592
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I

    move-result v0

    return v0
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;)I
    .locals 3
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "onSyncCommandInputStreamListener"    # Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2647
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2648
    .local v0, "exitCode":[I
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$11;

    invoke-direct {v1, p0, p2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$11;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandInputStreamListener;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2664
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 2665
    aget v1, v0, v2

    if-ltz v1, :cond_0

    .line 2666
    aget v1, v0, v2

    return v1

    .line 2665
    :cond_0
    new-instance v1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {v1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw v1
.end method

.method public run(Ljava/lang/Object;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;)I
    .locals 3
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "onSyncCommandLineListener"    # Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2621
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2622
    .local v0, "exitCode":[I
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$10;

    invoke-direct {v1, p0, p2, v0}, Leu/chainfire/libsuperuser/Shell$Interactive$10;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;Leu/chainfire/libsuperuser/Shell$OnSyncCommandLineListener;[I)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2638
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 2639
    aget v1, v0, v2

    if-ltz v1, :cond_0

    .line 2640
    aget v1, v0, v2

    return v1

    .line 2639
    :cond_0
    new-instance v1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {v1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw v1
.end method

.method public run(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Z)I
    .locals 3
    .param p1, "commands"    # Ljava/lang/Object;
    .param p4, "clear"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Leu/chainfire/libsuperuser/Shell$ShellDiedException;
        }
    .end annotation

    .line 2599
    .local p2, "STDOUT":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "STDERR":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    .line 2600
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 2601
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 2603
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2604
    .local v0, "exitCode":[I
    new-instance v1, Leu/chainfire/libsuperuser/Shell$Interactive$9;

    invoke-direct {v1, p0, v0, p2, p3}, Leu/chainfire/libsuperuser/Shell$Interactive$9;-><init>(Leu/chainfire/libsuperuser/Shell$Interactive;[ILjava/util/List;Ljava/util/List;)V

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    .line 2612
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForIdle()Z

    .line 2613
    aget v1, v0, v2

    if-ltz v1, :cond_2

    .line 2614
    aget v1, v0, v2

    return v1

    .line 2613
    :cond_2
    new-instance v1, Leu/chainfire/libsuperuser/Shell$ShellDiedException;

    invoke-direct {v1}, Leu/chainfire/libsuperuser/Shell$ShellDiedException;-><init>()V

    throw v1
.end method

.method startCallback()V
    .locals 2

    .line 1978
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbackSync:Ljava/lang/Object;

    monitor-enter v0

    .line 1979
    :try_start_0
    iget v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->callbacks:I

    .line 1980
    monitor-exit v0

    .line 1981
    return-void

    .line 1980
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public waitForIdle()Z
    .locals 2

    .line 2510
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2511
    :cond_0
    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2512
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v0, v1}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2515
    :cond_1
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2516
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2517
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idle:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    .line 2519
    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->idleSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2522
    goto :goto_1

    .line 2520
    :catch_0
    move-exception v1

    .line 2521
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    .line 2524
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2526
    invoke-direct {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->waitForCallbacks()Z

    move-result v0

    return v0

    .line 2524
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 2529
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public waitForOpened(Ljava/lang/Boolean;)Z
    .locals 3
    .param p1, "defaultIfInterrupted"    # Ljava/lang/Boolean;

    .line 2546
    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->getSanityChecksEnabledEffective()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Leu/chainfire/libsuperuser/Debug;->onMainThread()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2547
    :cond_0
    const-string v0, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-static {v0}, Leu/chainfire/libsuperuser/Debug;->log(Ljava/lang/String;)V

    .line 2548
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;

    const-string v1, "Application attempted to wait for a shell to become idle on the main thread"

    invoke-direct {v0, v1}, Leu/chainfire/libsuperuser/Shell$ShellOnMainThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2551
    :cond_1
    :goto_0
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2552
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2553
    :goto_1
    :try_start_0
    iget-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->opening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 2555
    :try_start_1
    iget-object v1, p0, Leu/chainfire/libsuperuser/Shell$Interactive;->openingSync:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2560
    :goto_2
    goto :goto_1

    .line 2556
    :catch_0
    move-exception v1

    .line 2557
    .local v1, "e":Ljava/lang/InterruptedException;
    if-eqz p1, :cond_2

    .line 2558
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    monitor-exit v0

    return v2

    .line 2557
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_2
    goto :goto_2

    .line 2562
    :cond_3
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2565
    :cond_4
    :goto_3
    invoke-virtual {p0}, Leu/chainfire/libsuperuser/Shell$Interactive;->isRunning()Z

    move-result v0

    return v0
.end method
