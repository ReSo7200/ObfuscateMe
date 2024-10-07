.class public Lorg/junit/rules/ErrorCollector;
.super Lorg/junit/rules/Verifier;
.source "ErrorCollector.java"


# instance fields
.field private errors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lorg/junit/rules/Verifier;-><init>()V

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/junit/rules/ErrorCollector;->errors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addError(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/Throwable;

    .line 49
    if-eqz p1, :cond_1

    .line 52
    instance-of v0, p1, Lorg/junit/internal/AssumptionViolatedException;

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 54
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-virtual {v0, p1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 55
    iget-object v1, p0, Lorg/junit/rules/ErrorCollector;->errors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    .end local v0    # "e":Ljava/lang/AssertionError;
    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lorg/junit/rules/ErrorCollector;->errors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :goto_0
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Error cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkSucceeds(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 90
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lorg/junit/internal/AssumptionViolatedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 96
    :catchall_0
    move-exception v1

    .line 97
    .local v1, "e":Ljava/lang/Throwable;
    invoke-virtual {p0, v1}, Lorg/junit/rules/ErrorCollector;->addError(Ljava/lang/Throwable;)V

    .line 98
    return-object v0

    .line 91
    .end local v1    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Lorg/junit/internal/AssumptionViolatedException;
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Callable threw AssumptionViolatedException"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 93
    .local v2, "error":Ljava/lang/AssertionError;
    invoke-virtual {v2, v1}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 94
    invoke-virtual {p0, v2}, Lorg/junit/rules/ErrorCollector;->addError(Ljava/lang/Throwable;)V

    .line 95
    return-object v0
.end method

.method public checkThat(Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 66
    .local p1, "value":Ljava/lang/Object;, "TT;"
    .local p2, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    const-string v0, ""

    invoke-virtual {p0, v0, p1, p2}, Lorg/junit/rules/ErrorCollector;->checkThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    .line 67
    return-void
.end method

.method public checkThat(Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Lorg/hamcrest/Matcher<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p2, "value":Ljava/lang/Object;, "TT;"
    .local p3, "matcher":Lorg/hamcrest/Matcher;, "Lorg/hamcrest/Matcher<TT;>;"
    new-instance v0, Lorg/junit/rules/ErrorCollector$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/junit/rules/ErrorCollector$1;-><init>(Lorg/junit/rules/ErrorCollector;Ljava/lang/String;Ljava/lang/Object;Lorg/hamcrest/Matcher;)V

    invoke-virtual {p0, v0}, Lorg/junit/rules/ErrorCollector;->checkSucceeds(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 81
    return-void
.end method

.method public checkThrows(Ljava/lang/Class;Lorg/junit/function/ThrowingRunnable;)V
    .locals 1
    .param p2, "runnable"    # Lorg/junit/function/ThrowingRunnable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Throwable;",
            ">;",
            "Lorg/junit/function/ThrowingRunnable;",
            ")V"
        }
    .end annotation

    .line 114
    .local p1, "expectedThrowable":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Throwable;>;"
    :try_start_0
    invoke-static {p1, p2}, Lorg/junit/Assert;->assertThrows(Ljava/lang/Class;Lorg/junit/function/ThrowingRunnable;)Ljava/lang/Throwable;
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/AssertionError;
    invoke-virtual {p0, v0}, Lorg/junit/rules/ErrorCollector;->addError(Ljava/lang/Throwable;)V

    .line 118
    .end local v0    # "e":Ljava/lang/AssertionError;
    :goto_0
    return-void
.end method

.method protected verify()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lorg/junit/rules/ErrorCollector;->errors:Ljava/util/List;

    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 43
    return-void
.end method
