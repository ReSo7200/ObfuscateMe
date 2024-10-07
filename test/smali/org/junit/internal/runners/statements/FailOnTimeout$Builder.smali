.class public Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
.super Ljava/lang/Object;
.source "FailOnTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/internal/runners/statements/FailOnTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private lookForStuckThread:Z

.field private timeout:J

.field private unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->lookForStuckThread:Z

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    .line 61
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 64
    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$1;

    .line 58
    invoke-direct {p0}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)J
    .locals 2
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    .line 58
    iget-wide v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Ljava/util/concurrent/TimeUnit;
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    .line 58
    iget-object v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    return-object v0
.end method

.method static synthetic access$300(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    .line 58
    iget-boolean v0, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->lookForStuckThread:Z

    return v0
.end method


# virtual methods
.method public build(Lorg/junit/runners/model/Statement;)Lorg/junit/internal/runners/statements/FailOnTimeout;
    .locals 2
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;

    .line 112
    if-eqz p1, :cond_0

    .line 115
    new-instance v0, Lorg/junit/internal/runners/statements/FailOnTimeout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout;-><init>(Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;Lorg/junit/runners/model/Statement;Lorg/junit/internal/runners/statements/FailOnTimeout$1;)V

    return-object v0

    .line 113
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "statement cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withLookingForStuckThread(Z)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .locals 0
    .param p1, "enable"    # Z

    .line 101
    iput-boolean p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->lookForStuckThread:Z

    .line 102
    return-object p0
.end method

.method public withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 80
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 83
    if-eqz p3, :cond_0

    .line 86
    iput-wide p1, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->timeout:J

    .line 87
    iput-object p3, p0, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->unit:Ljava/util/concurrent/TimeUnit;

    .line 88
    return-object p0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "TimeUnit cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "timeout must be non-negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
