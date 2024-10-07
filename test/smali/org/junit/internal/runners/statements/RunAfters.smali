.class public Lorg/junit/internal/runners/statements/RunAfters;
.super Lorg/junit/runners/model/Statement;
.source "RunAfters.java"


# instance fields
.field private final afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;"
        }
    .end annotation
.end field

.field private final next:Lorg/junit/runners/model/Statement;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .param p1, "next"    # Lorg/junit/runners/model/Statement;
    .param p3, "target"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 17
    .local p2, "afters":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 18
    iput-object p1, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    .line 19
    iput-object p2, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    .line 20
    iput-object p3, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    .line 21
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .local v0, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    :try_start_0
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v1}, Lorg/junit/runners/model/Statement;->evaluate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 31
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .local v2, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_1
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    goto :goto_1

    .line 34
    :catchall_0
    move-exception v3

    .line 35
    .local v3, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 38
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    goto :goto_4

    .line 28
    :catchall_1
    move-exception v1

    .line 29
    .local v1, "e":Ljava/lang/Throwable;
    :try_start_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 31
    nop

    .end local v1    # "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .restart local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_3
    invoke-virtual {p0, v2}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 36
    goto :goto_3

    .line 34
    :catchall_2
    move-exception v3

    .line 35
    .restart local v3    # "e":Ljava/lang/Throwable;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v2    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v3    # "e":Ljava/lang/Throwable;
    :goto_3
    goto :goto_2

    .line 39
    .end local v1    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-static {v0}, Lorg/junit/runners/model/MultipleFailureException;->assertEmpty(Ljava/util/List;)V

    .line 40
    return-void

    .line 31
    :catchall_3
    move-exception v1

    iget-object v2, p0, Lorg/junit/internal/runners/statements/RunAfters;->afters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/junit/runners/model/FrameworkMethod;

    .line 33
    .local v3, "each":Lorg/junit/runners/model/FrameworkMethod;
    :try_start_4
    invoke-virtual {p0, v3}, Lorg/junit/internal/runners/statements/RunAfters;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 36
    goto :goto_6

    .line 34
    :catchall_4
    move-exception v4

    .line 35
    .local v4, "e":Ljava/lang/Throwable;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    .end local v3    # "each":Lorg/junit/runners/model/FrameworkMethod;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_6
    goto :goto_5

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    throw v1
.end method

.method protected invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunAfters;->target:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    return-void
.end method
