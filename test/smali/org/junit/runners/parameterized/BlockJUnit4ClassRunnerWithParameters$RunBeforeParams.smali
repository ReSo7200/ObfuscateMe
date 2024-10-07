.class Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;
.super Lorg/junit/internal/runners/statements/RunBefores;
.source "BlockJUnit4ClassRunnerWithParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunBeforeParams"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;


# direct methods
.method constructor <init>(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;Lorg/junit/runners/model/Statement;Ljava/util/List;)V
    .locals 0
    .param p2, "next"    # Lorg/junit/runners/model/Statement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/junit/runners/model/Statement;",
            "Ljava/util/List<",
            "Lorg/junit/runners/model/FrameworkMethod;",
            ">;)V"
        }
    .end annotation

    .line 161
    .local p3, "befores":Ljava/util/List;, "Ljava/util/List<Lorg/junit/runners/model/FrameworkMethod;>;"
    iput-object p1, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;->this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;

    .line 162
    const/4 p1, 0x0

    invoke-direct {p0, p2, p3, p1}, Lorg/junit/internal/runners/statements/RunBefores;-><init>(Lorg/junit/runners/model/Statement;Ljava/util/List;Ljava/lang/Object;)V

    .line 163
    return-void
.end method


# virtual methods
.method protected invokeMethod(Lorg/junit/runners/model/FrameworkMethod;)V
    .locals 3
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 167
    invoke-virtual {p1}, Lorg/junit/runners/model/FrameworkMethod;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    .line 168
    .local v0, "paramCount":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    check-cast v2, [Ljava/lang/Object;

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters$RunBeforeParams;->this$0:Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;

    invoke-static {v2}, Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;->access$000(Lorg/junit/runners/parameterized/BlockJUnit4ClassRunnerWithParameters;)[Ljava/lang/Object;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v1, v2}, Lorg/junit/runners/model/FrameworkMethod;->invokeExplosively(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method
