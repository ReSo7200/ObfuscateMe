.class Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;
.super Lorg/junit/runners/BlockJUnit4ClassRunner;
.source "Theories.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/junit/experimental/theories/Theories$TheoryAnchor;->runWithCompleteAssignment(Lorg/junit/experimental/theories/internal/Assignments;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

.field final synthetic val$complete:Lorg/junit/experimental/theories/internal/Assignments;


# direct methods
.method constructor <init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Lorg/junit/runners/model/TestClass;Lorg/junit/experimental/theories/internal/Assignments;)V
    .locals 0
    .param p2, "x0"    # Lorg/junit/runners/model/TestClass;

    .line 223
    iput-object p1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iput-object p3, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    invoke-direct {p0, p2}, Lorg/junit/runners/BlockJUnit4ClassRunner;-><init>(Lorg/junit/runners/model/TestClass;)V

    return-void
.end method


# virtual methods
.method protected collectInitializationErrors(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 228
    .local p1, "errors":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    return-void
.end method

.method public createTest()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    invoke-virtual {v0}, Lorg/junit/experimental/theories/internal/Assignments;->getConstructorArguments()[Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "params":[Ljava/lang/Object;
    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    invoke-static {v1}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->access$000(Lorg/junit/experimental/theories/Theories$TheoryAnchor;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-static {v0}, Lorg/junit/Assume;->assumeNotNull([Ljava/lang/Object;)V

    .line 263
    :cond_0
    invoke-virtual {p0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->getTestClass()Lorg/junit/runners/model/TestClass;

    move-result-object v1

    invoke-virtual {v1}, Lorg/junit/runners/model/TestClass;->getOnlyConstructor()Ljava/lang/reflect/Constructor;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;

    .line 232
    invoke-super {p0, p1}, Lorg/junit/runners/BlockJUnit4ClassRunner;->methodBlock(Lorg/junit/runners/model/FrameworkMethod;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    .line 233
    .local v0, "statement":Lorg/junit/runners/model/Statement;
    new-instance v1, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;

    invoke-direct {v1, p0, v0}, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1$1;-><init>(Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;Lorg/junit/runners/model/Statement;)V

    return-object v1
.end method

.method protected methodInvoker(Lorg/junit/runners/model/FrameworkMethod;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;
    .locals 2
    .param p1, "method"    # Lorg/junit/runners/model/FrameworkMethod;
    .param p2, "test"    # Ljava/lang/Object;

    .line 252
    iget-object v0, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->this$0:Lorg/junit/experimental/theories/Theories$TheoryAnchor;

    iget-object v1, p0, Lorg/junit/experimental/theories/Theories$TheoryAnchor$1;->val$complete:Lorg/junit/experimental/theories/internal/Assignments;

    invoke-static {v0, p1, v1, p2}, Lorg/junit/experimental/theories/Theories$TheoryAnchor;->access$100(Lorg/junit/experimental/theories/Theories$TheoryAnchor;Lorg/junit/runners/model/FrameworkMethod;Lorg/junit/experimental/theories/internal/Assignments;Ljava/lang/Object;)Lorg/junit/runners/model/Statement;

    move-result-object v0

    return-object v0
.end method
