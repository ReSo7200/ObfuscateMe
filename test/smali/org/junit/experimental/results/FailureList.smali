.class Lorg/junit/experimental/results/FailureList;
.super Ljava/lang/Object;
.source "FailureList.java"


# instance fields
.field private final failures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/junit/runner/notification/Failure;",
            ">;)V"
        }
    .end annotation

    .line 12
    .local p1, "failures":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runner/notification/Failure;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lorg/junit/experimental/results/FailureList;->failures:Ljava/util/List;

    .line 14
    return-void
.end method


# virtual methods
.method public result()Lorg/junit/runner/Result;
    .locals 7

    .line 17
    new-instance v0, Lorg/junit/runner/Result;

    invoke-direct {v0}, Lorg/junit/runner/Result;-><init>()V

    .line 18
    .local v0, "result":Lorg/junit/runner/Result;
    invoke-virtual {v0}, Lorg/junit/runner/Result;->createListener()Lorg/junit/runner/notification/RunListener;

    move-result-object v1

    .line 19
    .local v1, "listener":Lorg/junit/runner/notification/RunListener;
    iget-object v2, p0, Lorg/junit/experimental/results/FailureList;->failures:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runner/notification/Failure;

    .line 21
    .local v3, "failure":Lorg/junit/runner/notification/Failure;
    :try_start_0
    invoke-virtual {v1, v3}, Lorg/junit/runner/notification/RunListener;->testFailure(Lorg/junit/runner/notification/Failure;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    nop

    .line 23
    .end local v3    # "failure":Lorg/junit/runner/notification/Failure;
    goto :goto_0

    .line 22
    .restart local v3    # "failure":Lorg/junit/runner/notification/Failure;
    :catch_0
    move-exception v4

    .line 23
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "I can\'t believe this happened"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 26
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "failure":Lorg/junit/runner/notification/Failure;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v0
.end method
