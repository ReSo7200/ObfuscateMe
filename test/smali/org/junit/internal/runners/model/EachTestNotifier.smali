.class public Lorg/junit/internal/runners/model/EachTestNotifier;
.super Ljava/lang/Object;
.source "EachTestNotifier.java"


# instance fields
.field private final description:Lorg/junit/runner/Description;

.field private final notifier:Lorg/junit/runner/notification/RunNotifier;


# direct methods
.method public constructor <init>(Lorg/junit/runner/notification/RunNotifier;Lorg/junit/runner/Description;)V
    .locals 0
    .param p1, "notifier"    # Lorg/junit/runner/notification/RunNotifier;
    .param p2, "description"    # Lorg/junit/runner/Description;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    .line 16
    iput-object p2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    .line 17
    return-void
.end method

.method private addMultipleFailureException(Lorg/junit/runners/model/MultipleFailureException;)V
    .locals 2
    .param p1, "mfe"    # Lorg/junit/runners/model/MultipleFailureException;

    .line 28
    invoke-virtual {p1}, Lorg/junit/runners/model/MultipleFailureException;->getFailures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 29
    .local v1, "each":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/model/EachTestNotifier;->addFailure(Ljava/lang/Throwable;)V

    .end local v1    # "each":Ljava/lang/Throwable;
    goto :goto_0

    .line 31
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addFailedAssumption(Lorg/junit/internal/AssumptionViolatedException;)V
    .locals 3
    .param p1, "e"    # Lorg/junit/internal/AssumptionViolatedException;

    .line 34
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestAssumptionFailed(Lorg/junit/runner/notification/Failure;)V

    .line 35
    return-void
.end method

.method public addFailure(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "targetException"    # Ljava/lang/Throwable;

    .line 20
    instance-of v0, p1, Lorg/junit/runners/model/MultipleFailureException;

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lorg/junit/runners/model/MultipleFailureException;

    invoke-direct {p0, v0}, Lorg/junit/internal/runners/model/EachTestNotifier;->addMultipleFailureException(Lorg/junit/runners/model/MultipleFailureException;)V

    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    new-instance v1, Lorg/junit/runner/notification/Failure;

    iget-object v2, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-direct {v1, v2, p1}, Lorg/junit/runner/notification/Failure;-><init>(Lorg/junit/runner/Description;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFailure(Lorg/junit/runner/notification/Failure;)V

    .line 25
    :goto_0
    return-void
.end method

.method public fireTestFinished()V
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestFinished(Lorg/junit/runner/Description;)V

    .line 39
    return-void
.end method

.method public fireTestIgnored()V
    .locals 2

    .line 46
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestIgnored(Lorg/junit/runner/Description;)V

    .line 47
    return-void
.end method

.method public fireTestStarted()V
    .locals 2

    .line 42
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestStarted(Lorg/junit/runner/Description;)V

    .line 43
    return-void
.end method

.method public fireTestSuiteFinished()V
    .locals 2

    .line 69
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestSuiteFinished(Lorg/junit/runner/Description;)V

    .line 70
    return-void
.end method

.method public fireTestSuiteStarted()V
    .locals 2

    .line 57
    iget-object v0, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->notifier:Lorg/junit/runner/notification/RunNotifier;

    iget-object v1, p0, Lorg/junit/internal/runners/model/EachTestNotifier;->description:Lorg/junit/runner/Description;

    invoke-virtual {v0, v1}, Lorg/junit/runner/notification/RunNotifier;->fireTestSuiteStarted(Lorg/junit/runner/Description;)V

    .line 58
    return-void
.end method
