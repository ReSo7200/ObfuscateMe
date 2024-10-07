.class public Lorg/junit/runner/notification/RunNotifier;
.super Ljava/lang/Object;
.source "RunNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/notification/RunNotifier$SafeNotifier;
    }
.end annotation


# instance fields
.field private final listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile pleaseStop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->pleaseStop:Z

    .line 55
    return-void
.end method

.method static synthetic access$000(Lorg/junit/runner/notification/RunNotifier;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lorg/junit/runner/notification/RunNotifier;

    .line 21
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lorg/junit/runner/notification/RunNotifier;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailures(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private fireTestFailures(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/RunListener;",
            ">;",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .line 172
    .local p1, "listeners":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/RunListener;>;"
    .local p2, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$6;

    invoke-direct {v0, p0, p1, p2}, Lorg/junit/runner/notification/RunNotifier$6;-><init>(Lorg/junit/runner/notification/RunNotifier;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$6;->run()V

    .line 182
    :cond_0
    return-void
.end method


# virtual methods
.method public addFirstListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 3
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 244
    if-eqz p1, :cond_0

    .line 247
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->wrapIfNotThreadSafe(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 248
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot add a null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 29
    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->wrapIfNotThreadSafe(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot add a null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V
    .locals 1
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .line 192
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$7;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$7;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/notification/Failure;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$7;->run()V

    .line 198
    return-void
.end method

.method public fireTestFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 3
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .line 167
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/junit/runner/notification/Failure;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailures(Ljava/util/List;Ljava/util/List;)V

    .line 168
    return-void
.end method

.method public fireTestFinished(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 222
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$9;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$9;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$9;->run()V

    .line 228
    return-void
.end method

.method public fireTestIgnored(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 206
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$8;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$8;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$8;->run()V

    .line 212
    return-void
.end method

.method public fireTestRunFinished(Lorg/junit/runner/Result;)V
    .locals 1
    .param p1, "result"    # Lorg/junit/runner/Result;

    .line 100
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$2;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$2;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Result;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$2;->run()V

    .line 106
    return-void
.end method

.method public fireTestRunStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 88
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$1;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$1;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$1;->run()V

    .line 94
    return-void
.end method

.method public fireTestStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/junit/runner/notification/StoppedByUserException;
        }
    .end annotation

    .line 150
    iget-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->pleaseStop:Z

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$5;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$5;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$5;->run()V

    .line 159
    return-void

    .line 151
    :cond_0
    new-instance v0, Lorg/junit/runner/notification/StoppedByUserException;

    invoke-direct {v0}, Lorg/junit/runner/notification/StoppedByUserException;-><init>()V

    throw v0
.end method

.method public fireTestSuiteFinished(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 135
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$4;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$4;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$4;->run()V

    .line 141
    return-void
.end method

.method public fireTestSuiteStarted(Lorg/junit/runner/Description;)V
    .locals 1
    .param p1, "description"    # Lorg/junit/runner/Description;

    .line 118
    new-instance v0, Lorg/junit/runner/notification/RunNotifier$3;

    invoke-direct {v0, p0, p1}, Lorg/junit/runner/notification/RunNotifier$3;-><init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V

    invoke-virtual {v0}, Lorg/junit/runner/notification/RunNotifier$3;->run()V

    .line 124
    return-void
.end method

.method public pleaseStop()V
    .locals 1

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/junit/runner/notification/RunNotifier;->pleaseStop:Z

    .line 238
    return-void
.end method

.method public removeListener(Lorg/junit/runner/notification/RunListener;)V
    .locals 2
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 39
    if-eqz p1, :cond_0

    .line 42
    iget-object v0, p0, Lorg/junit/runner/notification/RunNotifier;->listeners:Ljava/util/List;

    invoke-virtual {p0, p1}, Lorg/junit/runner/notification/RunNotifier;->wrapIfNotThreadSafe(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 43
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot remove a null listener"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method wrapIfNotThreadSafe(Lorg/junit/runner/notification/RunListener;)Lorg/junit/runner/notification/RunListener;
    .locals 2
    .param p1, "listener"    # Lorg/junit/runner/notification/RunListener;

    .line 50
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/junit/runner/notification/RunListener$ThreadSafe;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/junit/runner/notification/SynchronizedRunListener;

    invoke-direct {v0, p1, p0}, Lorg/junit/runner/notification/SynchronizedRunListener;-><init>(Lorg/junit/runner/notification/RunListener;Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method
