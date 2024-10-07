.class public Leu/chainfire/libsuperuser/Shell$Builder;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leu/chainfire/libsuperuser/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private autoHandler:Z

.field private commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Leu/chainfire/libsuperuser/Shell$Command;",
            ">;"
        }
    .end annotation
.end field

.field private detectOpen:Z

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private handler:Landroid/os/Handler;

.field private onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

.field private shell:Ljava/lang/String;

.field private shellDiesOnSTDOUTERRClose:Z

.field private wantSTDERR:Z

.field private watchdogTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 969
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 970
    const/4 v0, 0x0

    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    .line 972
    const/4 v1, 0x1

    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    .line 973
    const-string/jumbo v2, "sh"

    iput-object v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    .line 974
    const/4 v2, 0x0

    iput-boolean v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    .line 975
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    .line 976
    iput-boolean v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    .line 977
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    .line 979
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    .line 981
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 983
    iput-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 985
    iput v2, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return-void
.end method

.method static synthetic access$100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    return v0
.end method

.method static synthetic access$1000(Leu/chainfire/libsuperuser/Shell$Builder;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    return v0
.end method

.method static synthetic access$200(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    return v0
.end method

.method static synthetic access$400(Leu/chainfire/libsuperuser/Shell$Builder;)Z
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-boolean v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    return v0
.end method

.method static synthetic access$500(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5000(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;
    .param p1, "x1"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .param p2, "x2"    # Z

    .line 969
    invoke-direct {p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Leu/chainfire/libsuperuser/Shell$Builder;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$800(Leu/chainfire/libsuperuser/Shell$Builder;)Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    return-object v0
.end method

.method static synthetic access$900(Leu/chainfire/libsuperuser/Shell$Builder;)I
    .locals 1
    .param p0, "x0"    # Leu/chainfire/libsuperuser/Shell$Builder;

    .line 969
    iget v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    return v0
.end method

.method private openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;
    .param p2, "pooled"    # Z

    .line 1347
    nop

    .line 1348
    new-instance v0, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;

    invoke-direct {v0, p0, p1, p2}, Leu/chainfire/libsuperuser/Shell$ThreadedAutoCloseable;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)V

    return-object v0
.end method


# virtual methods
.method public addCommand(Ljava/lang/Object;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;

    .line 1163
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public addCommand(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "commands"    # Ljava/lang/Object;
    .param p2, "code"    # I
    .param p3, "onResultListener"    # Leu/chainfire/libsuperuser/Shell$OnResult;

    .line 1197
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->commands:Ljava/util/List;

    new-instance v1, Leu/chainfire/libsuperuser/Shell$Command;

    invoke-direct {v1, p1, p2, p3}, Leu/chainfire/libsuperuser/Shell$Command;-><init>(Ljava/lang/Object;ILeu/chainfire/libsuperuser/Shell$OnResult;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    return-object p0
.end method

.method public addEnvironment(Ljava/lang/String;Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 1139
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    return-object p0
.end method

.method public addEnvironment(Ljava/util/Map;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Leu/chainfire/libsuperuser/Shell$Builder;"
        }
    .end annotation

    .line 1151
    .local p1, "addEnvironment":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Leu/chainfire/libsuperuser/Shell$Builder;->environment:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1152
    return-object p0
.end method

.method public open()Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 2

    .line 1285
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    return-object v0
.end method

.method public open(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Interactive;
    .locals 1
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 1297
    new-instance v0, Leu/chainfire/libsuperuser/Shell$Interactive;

    invoke-direct {v0, p0, p1}, Leu/chainfire/libsuperuser/Shell$Interactive;-><init>(Leu/chainfire/libsuperuser/Shell$Builder;Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)V

    return-object v0
.end method

.method public openThreaded()Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 2

    .line 1319
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public openThreaded(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;)Leu/chainfire/libsuperuser/Shell$Threaded;
    .locals 1
    .param p1, "onShellOpenResultListener"    # Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;

    .line 1343
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->openThreadedEx(Leu/chainfire/libsuperuser/Shell$OnShellOpenResultListener;Z)Leu/chainfire/libsuperuser/Shell$Threaded;

    move-result-object v0

    return-object v0
.end method

.method public setAutoHandler(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "autoHandler"    # Z

    .line 1019
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->autoHandler:Z

    .line 1020
    return-object p0
.end method

.method public setDetectOpen(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "detectOpen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1083
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->detectOpen:Z

    .line 1084
    return-object p0
.end method

.method public setHandler(Landroid/os/Handler;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 1001
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->handler:Landroid/os/Handler;

    .line 1002
    return-object p0
.end method

.method public setMinimalLogging(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 2
    .param p1, "useMinimal"    # Z

    .line 1274
    xor-int/lit8 v0, p1, 0x1

    const/4 v1, 0x6

    invoke-static {v1, v0}, Leu/chainfire/libsuperuser/Debug;->setLogTypeEnabled(IZ)V

    .line 1275
    return-object p0
.end method

.method public setOnSTDERRLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "onLineListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1233
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDERRLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1234
    return-object p0
.end method

.method public setOnSTDOUTLineListener(Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "onLineListener"    # Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1215
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->onSTDOUTLineListener:Leu/chainfire/libsuperuser/StreamGobbler$OnLineListener;

    .line 1216
    return-object p0
.end method

.method public setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "shell"    # Ljava/lang/String;

    .line 1032
    iput-object p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shell:Ljava/lang/String;

    .line 1033
    return-object p0
.end method

.method public setShellDiesOnSTDOUTERRClose(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "shellDies"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1106
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->shellDiesOnSTDOUTERRClose:Z

    .line 1107
    return-object p0
.end method

.method public setWantSTDERR(Z)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "wantSTDERR"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1126
    iput-boolean p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->wantSTDERR:Z

    .line 1127
    return-object p0
.end method

.method public setWatchdogTimeout(I)Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 0
    .param p1, "watchdogTimeout"    # I

    .line 1257
    iput p1, p0, Leu/chainfire/libsuperuser/Shell$Builder;->watchdogTimeout:I

    .line 1258
    return-object p0
.end method

.method public useSH()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    .line 1043
    const-string/jumbo v0, "sh"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method

.method public useSU()Leu/chainfire/libsuperuser/Shell$Builder;
    .locals 1

    .line 1053
    const-string/jumbo v0, "su"

    invoke-virtual {p0, v0}, Leu/chainfire/libsuperuser/Shell$Builder;->setShell(Ljava/lang/String;)Leu/chainfire/libsuperuser/Shell$Builder;

    move-result-object v0

    return-object v0
.end method
