.class public Lorg/junit/runner/notification/RunListener;
.super Ljava/lang/Object;
.source "RunListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/runner/notification/RunListener$ThreadSafe;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    return-void
.end method


# virtual methods
.method public testAssumptionFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;

    .line 142
    return-void
.end method

.method public testFailure(Lorg/junit/runner/notification/Failure;)V
    .locals 0
    .param p1, "failure"    # Lorg/junit/runner/notification/Failure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    return-void
.end method

.method public testFinished(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 115
    return-void
.end method

.method public testIgnored(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    return-void
.end method

.method public testRunFinished(Lorg/junit/runner/Result;)V
    .locals 0
    .param p1, "result"    # Lorg/junit/runner/Result;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 70
    return-void
.end method

.method public testRunStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    return-void
.end method

.method public testStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 107
    return-void
.end method

.method public testSuiteFinished(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    return-void
.end method

.method public testSuiteStarted(Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "description"    # Lorg/junit/runner/Description;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 87
    return-void
.end method
