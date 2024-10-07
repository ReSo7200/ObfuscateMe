.class public Landroidx/test/runner/MonitoringInstrumentation;
.super Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;
.source "MonitoringInstrumentation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;,
        Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;
    }
.end annotation


# static fields
.field private static final MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

.field private static final MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

.field private static final TAG:Ljava/lang/String; = "MonitoringInstr"


# instance fields
.field private anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private volatile finished:Z

.field private handlerForMainLooper:Landroid/os/Handler;

.field private idleHandler:Landroid/os/MessageQueue$IdleHandler;

.field private intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

.field private volatile interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

.field private isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile isOriginalInstr:Ljava/lang/Boolean;

.field private jsBridgeClassName:Ljava/lang/String;

.field private lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

.field private oldDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 106
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    .line 107
    sget-wide v0, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    const-wide/16 v2, 0x28

    div-long/2addr v0, v2

    sput-wide v0, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;-><init>()V

    .line 109
    new-instance v0, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    .line 110
    new-instance v0, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    .line 112
    new-instance v0, Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-direct {v0}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    .line 115
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 117
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 125
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$1;

    invoke-direct {v0, p0}, Landroidx/test/runner/MonitoringInstrumentation$1;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    .line 136
    iput-boolean v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    return-void
.end method

.method static synthetic access$000(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 102
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$100(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 102
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->oldDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-object v0
.end method

.method static synthetic access$201(Landroidx/test/runner/MonitoringInstrumentation;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;
    .param p1, "x1"    # Landroid/content/Intent;

    .line 102
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroidx/test/runner/MonitoringInstrumentation;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 102
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$400(Landroidx/test/runner/MonitoringInstrumentation;)Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;
    .locals 1
    .param p0, "x0"    # Landroidx/test/runner/MonitoringInstrumentation;

    .line 102
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    return-object v0
.end method

.method private static getMultiDexClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 231
    :try_start_0
    const-string v0, "androidx.multidex.MultiDex"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v1, "android.support.multidex.MultiDex"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method private getTargetProcessValues()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1026
    nop

    .line 1029
    const/4 v0, 0x0

    .line 1031
    .local v0, "tpVal":Ljava/lang/String;
    nop

    .line 1032
    :try_start_0
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1033
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1034
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/InstrumentationInfo;->targetProcesses:Ljava/lang/String;

    move-object v0, v1

    .line 1036
    if-nez v0, :cond_0

    .line 1037
    const-string v1, ""

    move-object v0, v1

    .line 1039
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 1043
    nop

    .line 1044
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1045
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 1048
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v1, "tps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, ","

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v5, v2, v3

    .line 1050
    .local v5, "tp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1051
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 1052
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1049
    .end local v5    # "tp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1055
    :cond_3
    return-object v1

    .line 1040
    .end local v1    # "tps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    .line 1041
    .local v1, "unpossible":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate ourselves: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MonitoringInstr"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1042
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private installMultidexAndExceptionHandler()V
    .locals 0

    .line 296
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->installMultidex()V

    .line 301
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->registerUncaughtExceptionHandler()V

    .line 302
    return-void
.end method

.method private isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z
    .locals 4
    .param p1, "wantName"    # Ljava/lang/String;
    .param p2, "ps"    # Landroidx/test/internal/util/ProcSummary;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "wantName",
            "ps"
        }
    .end annotation

    .line 977
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 978
    .local v0, "wantLen":I
    iget-object v1, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 979
    .local v1, "cmdLen":I
    if-ne v0, v1, :cond_0

    .line 981
    iget-object v2, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 982
    :cond_0
    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    .line 984
    return v2

    .line 998
    :cond_1
    iget-object v3, p2, Landroidx/test/internal/util/ProcSummary;->cmdline:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 999
    iget-object v3, p2, Landroidx/test/internal/util/ProcSummary;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Use smaller processNames in AndroidManifest.xml. Long names are truncated. This process\'s cmdline is a prefix of the processName and suffix of comm - assuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MonitoringInstr"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/4 v2, 0x1

    return v2

    .line 1011
    :cond_2
    return v2
.end method

.method private isOriginalInstrumentationProcess()Z
    .locals 2

    .line 1017
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 1018
    .local v0, "isOriginal":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 1019
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalUncached()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 1020
    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstr:Ljava/lang/Boolean;

    .line 1022
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method private isOriginalUncached()Z
    .locals 7

    .line 1059
    nop

    .line 1062
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetProcessValues()Ljava/util/List;

    move-result-object v0

    .line 1063
    .local v0, "targetProcesses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 1065
    return v2

    .line 1067
    :cond_0
    const-string v1, "*"

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1068
    .local v1, "isWildcard":Z
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v2, :cond_1

    if-nez v1, :cond_1

    .line 1071
    return v2

    .line 1074
    :cond_1
    const/4 v2, 0x0

    .line 1077
    .local v2, "me":Landroidx/test/internal/util/ProcSummary;
    :try_start_0
    const-string/jumbo v4, "self"

    invoke-static {v4}, Landroidx/test/internal/util/ProcSummary;->summarize(Ljava/lang/String;)Landroidx/test/internal/util/ProcSummary;

    move-result-object v4
    :try_end_0
    .catch Landroidx/test/internal/util/ProcSummary$SummaryException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    .line 1081
    nop

    .line 1083
    if-eqz v1, :cond_3

    .line 1085
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 1086
    .local v3, "appDefProcessName":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 1087
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1089
    :cond_2
    invoke-direct {p0, v3, v2}, Landroidx/test/runner/MonitoringInstrumentation;->isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z

    move-result v4

    return v4

    .line 1092
    .end local v3    # "appDefProcessName":Ljava/lang/String;
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v2}, Landroidx/test/runner/MonitoringInstrumentation;->isHostingProcess(Ljava/lang/String;Landroidx/test/internal/util/ProcSummary;)Z

    move-result v3

    return v3

    .line 1078
    :catch_0
    move-exception v4

    .line 1079
    .local v4, "se":Landroidx/test/internal/util/ProcSummary$SummaryException;
    const-string v5, "MonitoringInstr"

    const-string v6, "Could not list apps for this user, running in sandbox? Assuming primary"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    return v3
.end method

.method private registerUncaughtExceptionHandler()V
    .locals 1

    .line 305
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->oldDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 306
    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$3;

    invoke-direct {v0, p0}, Landroidx/test/runner/MonitoringInstrumentation$3;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 335
    return-void
.end method

.method private setupDexmakerClassloader()V
    .locals 4

    .line 271
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    return-void

    .line 277
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 280
    .local v0, "originalClassLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 282
    .local v1, "newClassLoader":Ljava/lang/ClassLoader;
    if-eq v0, v1, :cond_1

    .line 283
    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v2

    .line 285
    const-string v3, "Setting context classloader to \'%s\', Original: \'%s\'"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    const-string v3, "MonitoringInstr"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    .line 290
    :cond_1
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->isDexmakerClassLoaderInitialized:Ljava/lang/ThreadLocal;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method private stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 685
    invoke-static {}, Landroidx/test/runner/intent/IntentStubberRegistry;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 688
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 689
    new-instance v0, Ljava/util/concurrent/FutureTask;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;

    invoke-direct {v1, p1}, Landroidx/test/runner/MonitoringInstrumentation$StubResultCallable;-><init>(Landroid/content/Intent;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 691
    .local v0, "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/app/Instrumentation$ActivityResult;>;"
    invoke-virtual {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 693
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Instrumentation$ActivityResult;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 705
    :catch_0
    move-exception v1

    .line 706
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 707
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 694
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 695
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    const-string v2, "Could not retrieve stub result for intent %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/RuntimeException;

    if-nez v3, :cond_1

    .line 700
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 701
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 703
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 698
    :cond_1
    const-string v3, "MonitoringInstr"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 710
    .end local v0    # "task":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Landroid/app/Instrumentation$ActivityResult;>;"
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "msg":Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroidx/test/runner/intent/IntentStubberRegistry;->getInstance()Landroidx/test/runner/intent/IntentStubber;

    move-result-object v0

    invoke-interface {v0, p1}, Landroidx/test/runner/intent/IntentStubber;->getActivityResultForIntent(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0

    .line 713
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method private tryLoadingJsBridge(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 891
    if-eqz p1, :cond_0

    .line 894
    new-instance v0, Landroidx/test/runner/MonitoringInstrumentation$5;

    invoke-direct {v0, p0, p1}, Landroidx/test/runner/MonitoringInstrumentation$5;-><init>(Landroidx/test/runner/MonitoringInstrumentation;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 916
    return-void

    .line 892
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JsBridge class name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "bundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "bundle"
        }
    .end annotation

    .line 765
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 766
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 767
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->CREATED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 768
    return-void
.end method

.method public callActivityOnDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 753
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnDestroy(Landroid/app/Activity;)V

    .line 754
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->DESTROYED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 755
    return-void
.end method

.method public callActivityOnPause(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 804
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnPause(Landroid/app/Activity;)V

    .line 805
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->PAUSED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 806
    return-void
.end method

.method public callActivityOnRestart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 759
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnRestart(Landroid/app/Activity;)V

    .line 760
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESTARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 761
    return-void
.end method

.method public callActivityOnResume(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 798
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnResume(Landroid/app/Activity;)V

    .line 799
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->RESUMED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V

    .line 800
    return-void
.end method

.method public callActivityOnStart(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 778
    :try_start_0
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnStart(Landroid/app/Activity;)V

    .line 779
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STARTED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    nop

    .line 784
    return-void

    .line 780
    :catch_0
    move-exception v0

    .line 781
    .local v0, "re":Ljava/lang/RuntimeException;
    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 782
    throw v0
.end method

.method public callActivityOnStop(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 789
    :try_start_0
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callActivityOnStop(Landroid/app/Activity;)V

    .line 790
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/Stage;->STOPPED:Landroidx/test/runner/lifecycle/Stage;

    invoke-virtual {v0, v1, p1}, Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;->signalLifecycleChange(Landroidx/test/runner/lifecycle/Stage;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 793
    nop

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 793
    throw v0
.end method

.method public callApplicationOnCreate(Landroid/app/Application;)V
    .locals 2
    .param p1, "app"    # Landroid/app/Application;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "app"
        }
    .end annotation

    .line 469
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/ApplicationStage;->PRE_ON_CREATE:Landroidx/test/runner/lifecycle/ApplicationStage;

    invoke-virtual {v0, p1, v1}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V

    .line 470
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 471
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    sget-object v1, Landroidx/test/runner/lifecycle/ApplicationStage;->CREATED:Landroidx/test/runner/lifecycle/ApplicationStage;

    invoke-virtual {v0, p1, v1}, Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;->signalLifecycleChange(Landroid/app/Application;Landroidx/test/runner/lifecycle/ApplicationStage;)V

    .line 472
    return-void
.end method

.method protected dumpThreadStateToOutputs(Ljava/lang/String;)V
    .locals 2
    .param p1, "outputFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputFileName"
        }
    .end annotation

    .line 730
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getThreadState()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "threadState":Ljava/lang/String;
    const-string v1, "THREAD_STATE"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    return-void
.end method

.method public execStartActivities(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;[Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 13
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intents"    # [Landroid/content/Intent;
    .param p6, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intents",
            "options"
        }
    .end annotation

    .line 641
    move-object/from16 v0, p5

    const-string v1, "MonitoringInstr"

    const-string v2, "execStartActivities(context, ibinder, ibinder, activity, intent[], bundle)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v1, -0x1

    .line 646
    .local v1, "requestCode":I
    array-length v2, v0

    const/4 v3, 0x0

    move v11, v3

    :goto_0
    if-ge v11, v2, :cond_0

    aget-object v12, v0, v11

    .line 647
    .local v12, "intent":Landroid/content/Intent;
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object v8, v12

    move v9, v1

    move-object/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Landroidx/test/runner/MonitoringInstrumentation;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    .line 646
    .end local v12    # "intent":Landroid/content/Intent;
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 649
    :cond_0
    return-void
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;
    .locals 3
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode"
        }
    .end annotation

    .line 567
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 568
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 569
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 570
    const-string v1, "Stubbing intent %s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-object v0

    .line 573
    :cond_0
    invoke-super/range {p0 .. p6}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;I)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 3
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 587
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 588
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 589
    const-string v1, "Stubbing intent %s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-object v0

    .line 592
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 1
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Activity;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .param p8, "user"    # Landroid/os/UserHandle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options",
            "user"
        }
    .end annotation

    .line 625
    invoke-super/range {p0 .. p8}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    return-object v0
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 4
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Landroid/app/Fragment;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 661
    const-string v0, "execStartActivity(context, IBinder, IBinder, Fragment, Intent, int, Bundle)"

    const-string v1, "MonitoringInstr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 663
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 664
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 665
    const-string v2, "Stubbing intent %s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    return-object v0

    .line 668
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;
    .locals 3
    .param p1, "who"    # Landroid/content/Context;
    .param p2, "contextThread"    # Landroid/os/IBinder;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "target"    # Ljava/lang/String;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "requestCode"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "who",
            "contextThread",
            "token",
            "target",
            "intent",
            "requestCode",
            "options"
        }
    .end annotation

    .line 605
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-virtual {v0, p5}, Landroidx/test/internal/runner/intent/IntentMonitorImpl;->signalIntent(Landroid/content/Intent;)V

    .line 606
    invoke-direct {p0, p5}, Landroidx/test/runner/MonitoringInstrumentation;->stubResultFor(Landroid/content/Intent;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v0

    .line 607
    .local v0, "ar":Landroid/app/Instrumentation$ActivityResult;
    if-eqz v0, :cond_0

    .line 608
    const-string v1, "Stubbing intent %s"

    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MonitoringInstr"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-object v0

    .line 611
    :cond_0
    invoke-super/range {p0 .. p7}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->execStartActivity(Landroid/content/Context;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/Instrumentation$ActivityResult;

    move-result-object v1

    return-object v1
.end method

.method public finish(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "resultCode"    # I
    .param p2, "results"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "results"
        }
    .end annotation

    .line 392
    iget-boolean v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    if-eqz v0, :cond_0

    .line 393
    const-string v0, "MonitoringInstr"

    const-string v1, "finish called 2x!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void

    .line 396
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->finished:Z

    .line 399
    const-string v0, "MonitoringInstrumentation#finish"

    invoke-static {v0}, Landroidx/tracing/Trace;->beginSection(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->shouldWaitForActivitiesToComplete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->handlerForMainLooper:Landroid/os/Handler;

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 402
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->waitForActivitiesToComplete()V

    .line 404
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)V

    .line 405
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->restoreUncaughtExceptionHandler()V

    .line 406
    invoke-static {}, Landroidx/tracing/Trace;->endSection()V

    .line 409
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->finish(ILandroid/os/Bundle;)V

    .line 410
    return-void
.end method

.method protected getThreadState()Ljava/lang/String;
    .locals 11

    .line 735
    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 736
    .local v0, "threads":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 737
    .local v1, "threadState":Ljava/lang/StringBuilder;
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 738
    .local v3, "threadAndStack":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 739
    .local v4, "threadMessage":Ljava/lang/StringBuilder;
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    array-length v7, v6

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 741
    .local v9, "ste":Ljava/lang/StackTraceElement;
    const-string v10, "    "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    invoke-virtual {v9}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    .end local v9    # "ste":Ljava/lang/StackTraceElement;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 745
    :cond_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .end local v3    # "threadAndStack":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Thread;[Ljava/lang/StackTraceElement;>;"
    .end local v4    # "threadMessage":Ljava/lang/StringBuilder;
    goto :goto_0

    .line 748
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected installMultidex()V
    .locals 0

    .line 202
    nop

    .line 227
    return-void
.end method

.method protected installOldMultiDex(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "multidexClass"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 244
    .local p1, "multidexClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const-string v1, "install"

    invoke-virtual {p1, v1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 245
    .local v0, "install":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    return-void
.end method

.method public interceptActivityUsing(Landroidx/test/runner/intercepting/InterceptingActivityFactory;)V
    .locals 0
    .param p1, "interceptingActivityFactory"    # Landroidx/test/runner/intercepting/InterceptingActivityFactory;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "interceptingActivityFactory"
        }
    .end annotation

    .line 873
    invoke-static {p1}, Landroidx/test/internal/util/Checks;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    .line 875
    return-void
.end method

.method protected final isPrimaryInstrProcess()Z
    .locals 1

    .line 972
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isOriginalInstrumentationProcess()Z

    move-result v0

    return v0
.end method

.method protected isPrimaryInstrProcess(Ljava/lang/String;)Z
    .locals 1
    .param p1, "argsProcessName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "argsProcessName"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 958
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->isPrimaryInstrProcess()Z

    move-result v0

    return v0
.end method

.method public newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "application"    # Landroid/app/Application;
    .param p5, "intent"    # Landroid/content/Intent;
    .param p6, "info"    # Landroid/content/pm/ActivityInfo;
    .param p7, "title"    # Ljava/lang/CharSequence;
    .param p8, "parent"    # Landroid/app/Activity;
    .param p9, "id"    # Ljava/lang/String;
    .param p10, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "clazz",
            "context",
            "token",
            "application",
            "intent",
            "info",
            "title",
            "parent",
            "id",
            "lastNonConfigurationInstance"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            "Landroid/os/IBinder;",
            "Landroid/app/Application;",
            "Landroid/content/Intent;",
            "Landroid/content/pm/ActivityInfo;",
            "Ljava/lang/CharSequence;",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")",
            "Landroid/app/Activity;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 826
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "activityClassPackageName":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 828
    .local v1, "contextPackageName":Ljava/lang/String;
    invoke-virtual {p5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 829
    .local v2, "intentComponentName":Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 830
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 831
    new-instance v3, Landroid/content/ComponentName;

    .line 832
    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 831
    invoke-virtual {p5, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 835
    :cond_0
    invoke-super/range {p0 .. p10}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;

    move-result-object v3

    return-object v3
.end method

.method public newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "intent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 851
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    invoke-interface {v0, p1, p2, p3}, Landroidx/test/runner/intercepting/InterceptingActivityFactory;->shouldIntercept(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    invoke-interface {v0, p1, p2, p3}, Landroidx/test/runner/intercepting/InterceptingActivityFactory;->create(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    return-object v0

    .line 855
    :cond_0
    invoke-static {p1, p2, p3}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->instantiateActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v0

    .line 856
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 857
    return-object v0

    .line 860
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->newActivity(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Intent;)Landroid/app/Activity;

    move-result-object v1

    return-object v1
.end method

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cl",
            "className",
            "context"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->installMultidexAndExceptionHandler()V

    .line 151
    invoke-static {p1, p2}, Landroidx/test/platform/app/AppComponentFactoryRegistry;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;

    move-result-object v0

    .line 152
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 153
    return-object v0

    .line 156
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

    move-result-object v1

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "arguments"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "arguments"
        }
    .end annotation

    .line 167
    invoke-static {p0, p1}, Landroidx/test/platform/app/InstrumentationRegistry;->registerInstance(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    .line 168
    invoke-static {p0, p1}, Landroidx/test/InstrumentationRegistry;->registerInstance(Landroid/app/Instrumentation;Landroid/os/Bundle;)V

    .line 169
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lifecycleMonitor:Landroidx/test/internal/runner/lifecycle/ActivityLifecycleMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ActivityLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ActivityLifecycleMonitor;)V

    .line 170
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->applicationMonitor:Landroidx/test/internal/runner/lifecycle/ApplicationLifecycleMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitorRegistry;->registerInstance(Landroidx/test/runner/lifecycle/ApplicationLifecycleMonitor;)V

    .line 171
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->intentMonitor:Landroidx/test/internal/runner/intent/IntentMonitorImpl;

    invoke-static {v0}, Landroidx/test/runner/intent/IntentMonitorRegistry;->registerInstance(Landroidx/test/runner/intent/IntentMonitor;)V

    .line 173
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->handlerForMainLooper:Landroid/os/Handler;

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "corePoolSize":I
    const-wide/16 v1, 0x0

    .line 176
    .local v1, "keepAliveTime":J
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Landroidx/test/runner/MonitoringInstrumentation$2;

    invoke-direct {v10, p0}, Landroidx/test/runner/MonitoringInstrumentation$2;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    const/4 v4, 0x0

    const v5, 0x7fffffff

    const-wide/16 v6, 0x0

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v11, p0, Landroidx/test/runner/MonitoringInstrumentation;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 191
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v3, v4}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 192
    invoke-super {p0, p1}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->specifyDexMakerCacheProperty()V

    .line 194
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->setupDexmakerClassloader()V

    .line 195
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->useDefaultInterceptingActivityFactory()V

    .line 196
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 459
    const-string v0, "MonitoringInstr"

    const-string v1, "Instrumentation Finished!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v1, p0, Landroidx/test/runner/MonitoringInstrumentation;->idleHandler:Landroid/os/MessageQueue$IdleHandler;

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 462
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/test/internal/runner/InstrumentationConnection;->terminate()V

    .line 464
    invoke-super {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onDestroy()V

    .line 465
    return-void
.end method

.method public onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "e"
        }
    .end annotation

    .line 718
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    .line 719
    const-string v1, "Exception encountered by: %s. Dumping thread state to outputs and pining for the fjords."

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "error":Ljava/lang/String;
    const-string v1, "MonitoringInstr"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 724
    const-string v2, "ThreadState-onException.txt"

    invoke-virtual {p0, v2}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 725
    const-string v2, "Dying now..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-super {p0, p1, p2}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onException(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v1

    return v1
.end method

.method public onStart()V
    .locals 2

    .line 350
    invoke-super {p0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->onStart()V

    .line 352
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->jsBridgeClassName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->jsBridgeClassName:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->tryLoadingJsBridge(Ljava/lang/String;)V

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->waitForIdleSync()V

    .line 377
    invoke-direct {p0}, Landroidx/test/runner/MonitoringInstrumentation;->setupDexmakerClassloader()V

    .line 379
    invoke-static {}, Landroidx/test/internal/runner/InstrumentationConnection;->getInstance()Landroidx/test/internal/runner/InstrumentationConnection;

    move-result-object v0

    new-instance v1, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;

    invoke-direct {v1, p0}, Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;-><init>(Landroidx/test/runner/MonitoringInstrumentation;)V

    invoke-virtual {v0, p0, v1}, Landroidx/test/internal/runner/InstrumentationConnection;->init(Landroid/app/Instrumentation;Landroidx/test/runner/MonitoringInstrumentation$ActivityFinisher;)V

    .line 380
    return-void
.end method

.method protected restoreUncaughtExceptionHandler()V
    .locals 1

    .line 338
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->oldDefaultExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 339
    return-void
.end method

.method public runOnMainSync(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "runnable"
        }
    .end annotation

    .line 484
    new-instance v0, Ljava/util/concurrent/FutureTask;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 485
    .local v0, "wrapped":Ljava/util/concurrent/FutureTask;, "Ljava/util/concurrent/FutureTask<Ljava/lang/Void;>;"
    invoke-super {p0, v0}, Landroidx/test/internal/runner/hidden/ExposedInstrumentationApi;->runOnMainSync(Ljava/lang/Runnable;)V

    .line 487
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    nop

    .line 499
    return-void

    .line 490
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 492
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v3, v2, Ljava/lang/RuntimeException;

    if-nez v3, :cond_1

    .line 494
    instance-of v3, v2, Ljava/lang/Error;

    if-eqz v3, :cond_0

    .line 495
    move-object v3, v2

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 497
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 493
    :cond_1
    move-object v3, v2

    check-cast v3, Ljava/lang/RuntimeException;

    throw v3

    .line 488
    .end local v1    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v2    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 489
    .local v1, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected final setJsBridgeClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "className"
        }
    .end annotation

    .line 259
    if-eqz p1, :cond_1

    .line 263
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->isJsBridgeLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iput-object p1, p0, Landroidx/test/runner/MonitoringInstrumentation;->jsBridgeClassName:Ljava/lang/String;

    .line 267
    return-void

    .line 264
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsBridge is already loaded!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JsBridge class name cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected shouldWaitForActivitiesToComplete()Z
    .locals 3

    .line 415
    invoke-static {}, Landroidx/test/platform/app/InstrumentationRegistry;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "waitForActivitiesToComplete"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 414
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected specifyDexMakerCacheProperty()V
    .locals 4

    .line 254
    invoke-virtual {p0}, Landroidx/test/runner/MonitoringInstrumentation;->getTargetContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dxmaker_cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    .line 255
    .local v0, "dexCache":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "dexmaker.dexcache"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    return-void
.end method

.method public startActivitySync(Landroid/content/Intent;)Landroid/app/Activity;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .line 503
    invoke-static {}, Landroidx/test/internal/util/Checks;->checkNotMainThread()V

    .line 504
    iget-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 506
    .local v0, "lastIdleTimeBeforeLaunch":J
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->anActivityHasBeenLaunched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 520
    const/high16 v2, 0x4000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 522
    :cond_0
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Landroidx/test/runner/MonitoringInstrumentation$4;

    invoke-direct {v3, p0, p1}, Landroidx/test/runner/MonitoringInstrumentation$4;-><init>(Landroidx/test/runner/MonitoringInstrumentation;Landroid/content/Intent;)V

    .line 523
    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v2

    .line 532
    .local v2, "startedActivity":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<Landroid/app/Activity;>;"
    :try_start_0
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v5, v6, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 552
    :catch_0
    move-exception v3

    .line 553
    .local v3, "ie":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 554
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "interrupted"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 550
    .end local v3    # "ie":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v3

    .line 551
    .local v3, "ee":Ljava/util/concurrent/ExecutionException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Could not launch activity"

    invoke-virtual {v3}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 533
    .end local v3    # "ee":Ljava/util/concurrent/ExecutionException;
    :catch_2
    move-exception v3

    .line 534
    .local v3, "te":Ljava/util/concurrent/TimeoutException;
    const-string v5, "ThreadState-startActivityTimeout.txt"

    invoke-virtual {p0, v5}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 535
    invoke-interface {v2, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 536
    new-instance v4, Ljava/lang/RuntimeException;

    .line 547
    invoke-static {}, Landroidx/test/internal/platform/app/ActivityLifecycleTimeout;->getMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 548
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v7, p0, Landroidx/test/runner/MonitoringInstrumentation;->lastIdleTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 549
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {p1, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 537
    const-string v6, "Could not launch intent %s within %s milliseconds. Perhaps the main thread has not gone idle within a reasonable amount of time? There could be an animation or something constantly repainting the screen. Or the activity is doing network calls on creation? See the threaddump logs. For your reference the last time the event queue was idle before your activity launch request was %s and now the last time the queue went idle was: %s. If these numbers are the same your activity might be hogging the event queue."

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected unwrapException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 1107
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1108
    .local v0, "cause":Ljava/lang/Throwable;
    if-nez v0, :cond_0

    .line 1109
    return-object p1

    .line 1111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1112
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1113
    invoke-virtual {p0, v0}, Landroidx/test/runner/MonitoringInstrumentation;->unwrapException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v2

    return-object v2

    .line 1115
    :cond_1
    return-object p1
.end method

.method public useDefaultInterceptingActivityFactory()V
    .locals 1

    .line 882
    new-instance v0, Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;

    invoke-direct {v0}, Landroidx/test/internal/runner/intercepting/DefaultInterceptingActivityFactory;-><init>()V

    iput-object v0, p0, Landroidx/test/runner/MonitoringInstrumentation;->interceptingActivityFactory:Landroidx/test/runner/intercepting/InterceptingActivityFactory;

    .line 883
    return-void
.end method

.method protected waitForActivitiesToComplete()V
    .locals 7

    .line 430
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 434
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    add-long/2addr v0, v2

    .line 435
    .local v0, "endTime":J
    iget-object v2, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 436
    .local v2, "currentActivityCount":I
    :goto_0
    const-string v3, "MonitoringInstr"

    if-lez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    .line 438
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unstopped activity count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    sget-wide v4, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_POLL_FOR_ACTIVITY_STOP:J

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 440
    iget-object v4, p0, Landroidx/test/runner/MonitoringInstrumentation;->startedActivityCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 444
    goto :goto_0

    .line 441
    :catch_0
    move-exception v4

    .line 442
    .local v4, "ie":Ljava/lang/InterruptedException;
    const-string v5, "Abandoning activity wait due to interruption."

    invoke-static {v3, v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 443
    nop

    .line 447
    .end local v4    # "ie":Ljava/lang/InterruptedException;
    :cond_0
    if-lez v2, :cond_1

    .line 448
    const-string v4, "ThreadState-unstopped.txt"

    invoke-virtual {p0, v4}, Landroidx/test/runner/MonitoringInstrumentation;->dumpThreadStateToOutputs(Ljava/lang/String;)V

    .line 449
    nop

    .line 453
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-wide v5, Landroidx/test/runner/MonitoringInstrumentation;->MILLIS_TO_WAIT_FOR_ACTIVITY_TO_STOP:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 451
    const-string v5, "Still %s activities active after waiting %s ms."

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_1
    return-void

    .line 431
    .end local v0    # "endTime":J
    .end local v2    # "currentActivityCount":I
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot be called from main thread!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
