.class public Lorg/junit/rules/Timeout;
.super Ljava/lang/Object;
.source "Timeout.java"

# interfaces
.implements Lorg/junit/rules/TestRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/rules/Timeout$Builder;
    }
.end annotation


# instance fields
.field private final lookForStuckThread:Z

.field private final timeUnit:Ljava/util/concurrent/TimeUnit;

.field private final timeout:J


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "millis"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 68
    int-to-long v0, p1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0, v1, v2}, Lorg/junit/rules/Timeout;-><init>(JLjava/util/concurrent/TimeUnit;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-wide p1, p0, Lorg/junit/rules/Timeout;->timeout:J

    .line 82
    iput-object p3, p0, Lorg/junit/rules/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/junit/rules/Timeout;->lookForStuckThread:Z

    .line 84
    return-void
.end method

.method protected constructor <init>(Lorg/junit/rules/Timeout$Builder;)V
    .locals 2
    .param p1, "builder"    # Lorg/junit/rules/Timeout$Builder;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Lorg/junit/rules/Timeout$Builder;->getTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/rules/Timeout;->timeout:J

    .line 94
    invoke-virtual {p1}, Lorg/junit/rules/Timeout$Builder;->getTimeUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    iput-object v0, p0, Lorg/junit/rules/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    .line 95
    invoke-virtual {p1}, Lorg/junit/rules/Timeout$Builder;->getLookingForStuckThread()Z

    move-result v0

    iput-boolean v0, p0, Lorg/junit/rules/Timeout;->lookForStuckThread:Z

    .line 96
    return-void
.end method

.method public static builder()Lorg/junit/rules/Timeout$Builder;
    .locals 1

    .line 51
    new-instance v0, Lorg/junit/rules/Timeout$Builder;

    invoke-direct {v0}, Lorg/junit/rules/Timeout$Builder;-><init>()V

    return-object v0
.end method

.method public static millis(J)Lorg/junit/rules/Timeout;
    .locals 2
    .param p0, "millis"    # J

    .line 105
    new-instance v0, Lorg/junit/rules/Timeout;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lorg/junit/rules/Timeout;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static seconds(J)Lorg/junit/rules/Timeout;
    .locals 2
    .param p0, "seconds"    # J

    .line 115
    new-instance v0, Lorg/junit/rules/Timeout;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v0, p0, p1, v1}, Lorg/junit/rules/Timeout;-><init>(JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method


# virtual methods
.method public apply(Lorg/junit/runners/model/Statement;Lorg/junit/runner/Description;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "base"    # Lorg/junit/runners/model/Statement;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 155
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/junit/rules/Timeout;->createFailOnTimeoutStatement(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/junit/rules/Timeout$1;

    invoke-direct {v1, p0, v0}, Lorg/junit/rules/Timeout$1;-><init>(Lorg/junit/rules/Timeout;Ljava/lang/Exception;)V

    return-object v1
.end method

.method protected createFailOnTimeoutStatement(Lorg/junit/runners/model/Statement;)Lorg/junit/runners/model/Statement;
    .locals 4
    .param p1, "statement"    # Lorg/junit/runners/model/Statement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 147
    invoke-static {}, Lorg/junit/internal/runners/statements/FailOnTimeout;->builder()Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    iget-wide v1, p0, Lorg/junit/rules/Timeout;->timeout:J

    iget-object v3, p0, Lorg/junit/rules/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withTimeout(JLjava/util/concurrent/TimeUnit;)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/junit/rules/Timeout;->lookForStuckThread:Z

    invoke-virtual {v0, v1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->withLookingForStuckThread(Z)Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/junit/internal/runners/statements/FailOnTimeout$Builder;->build(Lorg/junit/runners/model/Statement;)Lorg/junit/internal/runners/statements/FailOnTimeout;

    move-result-object v0

    return-object v0
.end method

.method protected final getLookingForStuckThread()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lorg/junit/rules/Timeout;->lookForStuckThread:Z

    return v0
.end method

.method protected final getTimeout(Ljava/util/concurrent/TimeUnit;)J
    .locals 3
    .param p1, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 124
    iget-wide v0, p0, Lorg/junit/rules/Timeout;->timeout:J

    iget-object v2, p0, Lorg/junit/rules/Timeout;->timeUnit:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method
