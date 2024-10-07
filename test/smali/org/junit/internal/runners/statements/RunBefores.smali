.class public Lorg/junit/internal/runners/statements/RunBefores;
.super Lorg/junit/runners/model/Statement;
.source "RunBefores.java"


# instance fields
.field private final befores:Ljava/util/List;
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

    .line 15
    .local p2, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    invoke-direct {p0}, Lorg/junit/runners/model/Statement;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/junit/internal/runners/statements/RunBefores;->next:Lorg/junit/runners/model/Statement;

    .line 17
    iput-object p2, p0, Lorg/junit/internal/runners/statements/RunBefores;->befores:Ljava/util/List;

    .line 18
    iput-object p3, p0, Lorg/junit/internal/runners/statements/RunBefores;->target:Ljava/lang/Object;

    .line 19
    return-void
.end method


# virtual methods
.method public evaluate()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->befores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/junit/runners/model/FrameworkMethod;

    .line 24
    .local v1, "before":Lorg/junit/runners/model/FrameworkMethod;
    invoke-virtual {p0, v1}, Lorg/junit/internal/runners/statements/RunBefores;->invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V

    .end local v1    # "before":Lorg/junit/runners/model/FrameworkMethod;
    goto :goto_0

    .line 26
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->next:Lorg/junit/runners/model/Statement;

    invoke-virtual {v0}, Lorg/junit/runners/model/Statement;->evaluate()V

    .line 27
    return-void
.end method

.method protected invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lorg/junit/internal/runners/statements/RunBefores;->target:Ljava/lang/Object;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v1}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    return-void
.end method
