.class public Lorg/junit/internal/builders/IgnoredBuilder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "IgnoredBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method public runnerForClass(Ljava/lang/Class;)Lorg/junit/runner/Runner;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lorg/junit/runner/Runner;"
        }
    .end annotation

    .line 10
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lorg/junit/Ignore;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lorg/junit/internal/builders/IgnoredClassRunner;

    invoke-direct {v0, p1}, Lorg/junit/internal/builders/IgnoredClassRunner;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
