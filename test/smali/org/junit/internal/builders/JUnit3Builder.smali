.class public Lorg/junit/internal/builders/JUnit3Builder;
.super Lorg/junit/runners/model/RunnerBuilder;
.source "JUnit3Builder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lorg/junit/runners/model/RunnerBuilder;-><init>()V

    return-void
.end method


# virtual methods
.method isPre4Test(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 17
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljunit/framework/TestCase;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 10
    .local p1, "testClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Lorg/junit/internal/builders/JUnit3Builder;->isPre4Test(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v0, Lorg/junit/internal/runners/JUnit38ClassRunner;

    invoke-direct {v0, p1}, Lorg/junit/internal/runners/JUnit38ClassRunner;-><init>(Ljava/lang/Class;)V

    return-object v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
