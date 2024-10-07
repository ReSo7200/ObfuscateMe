.class final Lorg/junit/experimental/max/MaxHistory$RememberingListener;
.super Lorg/junit/runner/notification/RunListener;
.source "MaxHistory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/experimental/max/MaxHistory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RememberingListener"
.end annotation


# instance fields
.field private overallStart:J

.field private starts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/junit/runner/Description;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/junit/experimental/max/MaxHistory;


# direct methods
.method private constructor <init>(Lorg/junit/experimental/max/MaxHistory;)V
    .locals 2

    .line 109
    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-direct {p0}, Lorg/junit/runner/notification/RunListener;-><init>()V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->overallStart:J

    .line 112
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->starts:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lorg/junit/experimental/max/MaxHistory;Lorg/junit/experimental/max/MaxHistory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/junit/experimental/max/MaxHistory;
    .param p2, "x1"    # Lorg/junit/experimental/max/MaxHistory$1;

    .line 109
    invoke-direct {p0, p1}, Lorg/junit/experimental/max/MaxHistory$RememberingListener;-><init>(Lorg/junit/experimental/max/MaxHistory;)V

    return-void
.end method


# virtual methods
.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 4
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-virtual {p1}, Lorg/junit/runner/notification/Failure;->getDescription()Lorg/junit/runner/Description;

    move-result-object v1

    iget-wide v2, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->overallStart:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/junit/experimental/max/MaxHistory;->putTestFailureTimestamp(Lorg/junit/runner/Description;J)V

    .line 130
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 7
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 122
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 123
    .local v0, "end":J
    iget-object v2, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->starts:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 124
    .local v2, "start":J
    iget-object v4, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->this$0:Lorg/junit/experimental/max/MaxHistory;

    sub-long v5, v0, v2

    invoke-virtual {v4, p1, v5, v6}, Lorg/junit/experimental/max/MaxHistory;->putTestDuration(Lorg/junit/runner/Description;J)V

    .line 125
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 1
    .param p1, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->this$0:Lorg/junit/experimental/max/MaxHistory;

    invoke-static {v0}, Lorg/junit/experimental/max/MaxHistory;->access$000(Lorg/junit/experimental/max/MaxHistory;)V

    .line 135
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 3
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/junit/experimental/max/MaxHistory$RememberingListener;->starts:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method
